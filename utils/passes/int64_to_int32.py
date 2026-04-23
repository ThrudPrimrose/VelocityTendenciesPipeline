"""Demote every ``int64`` / ``uint64`` to its 32-bit equivalent.

Walks the SDFG tree and rewrites:
  - ``sdfg.symbols`` — any symbol typed as int64/uint64.
  - Array descriptors' ``dtype``.
  - ``NestedSDFG`` in/out connector types.

Fixes the ``conversion from 'long int' to 'int' may change value`` warnings
emitted by the C++ toolchain when DaCe's default 64-bit loop / map params
are passed to a callee signature declared as ``int``.
"""
import dace
from dace.sdfg import nodes


_I64_TO_I32 = {dace.int64: dace.int32, dace.uint64: dace.uint32}


def int64_to_int32(sdfg: dace.SDFG) -> int:
    count = 0
    for g in _all_sdfgs(sdfg):
        for arr in g.arrays.values():
            new = _I64_TO_I32.get(arr.dtype)
            if new is not None:
                arr.dtype = new
                count += 1
        for sym_name, sym_type in list(g.symbols.items()):
            new = _I64_TO_I32.get(sym_type)
            if new is not None:
                g.symbols[sym_name] = new
                count += 1
        for state in g.all_states():
            for node in state.nodes():
                if not isinstance(node, nodes.NestedSDFG):
                    continue
                for conn, t in list(node.in_connectors.items()):
                    new = _I64_TO_I32.get(t)
                    if new is not None:
                        node.in_connectors[conn] = new
                        count += 1
                for conn, t in list(node.out_connectors.items()):
                    new = _I64_TO_I32.get(t)
                    if new is not None:
                        node.out_connectors[conn] = new
                        count += 1
    return count


def _all_sdfgs(sdfg: dace.SDFG):
    yield sdfg
    for n, _ in sdfg.all_nodes_recursive():
        if isinstance(n, nodes.NestedSDFG):
            yield n.sdfg
