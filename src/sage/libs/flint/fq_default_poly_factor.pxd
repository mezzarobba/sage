# distutils: libraries = flint
# distutils: depends = flint/fq_default_poly_factor.h

################################################################################
# This file is auto-generated. Do not modify by hand
################################################################################

from libc.stdio cimport FILE
from sage.libs.gmp.types cimport *
from sage.libs.mpfr.types cimport *
from sage.libs.flint.types cimport *

cdef extern from "flint_wrap.h":

    void fq_default_poly_factor_init(fq_default_poly_factor_t fac, const fq_default_ctx_t ctx)
    # Initialises ``fac`` for use. An :type:`fq_default_poly_factor_t`
    # represents a polynomial in factorised form as a product of
    # polynomials with associated exponents.

    void fq_default_poly_factor_clear(fq_default_poly_factor_t fac, const fq_default_ctx_t ctx)
    # Frees all memory associated with ``fac``.

    void fq_default_poly_factor_realloc(fq_default_poly_factor_t fac, slong alloc, const fq_default_ctx_t ctx)
    # Reallocates the factor structure to provide space for
    # precisely ``alloc`` factors.

    void fq_default_poly_factor_fit_length(fq_default_poly_factor_t fac, slong len, const fq_default_ctx_t ctx)
    # Ensures that the factor structure has space for at least
    # ``len`` factors.  This function takes care of the case of
    # repeated calls by always at least doubling the number of factors
    # the structure can hold.

    void fq_default_poly_factor_set(fq_default_poly_factor_t res, const fq_default_poly_factor_t fac, const fq_default_ctx_t ctx)
    # Sets ``res`` to the same factorisation as ``fac``.

    void fq_default_poly_factor_print_pretty(const fq_default_poly_factor_t fac, const char * var, const fq_default_ctx_t ctx)
    # Pretty-prints the entries of ``fac`` to standard output.

    void fq_default_poly_factor_print(const fq_default_poly_factor_t fac, const fq_default_ctx_t ctx)
    # Prints the entries of ``fac`` to standard output.

    void fq_default_poly_factor_insert(fq_default_poly_factor_t fac, const fq_default_poly_t poly, slong exp, const fq_default_ctx_t ctx)
    # Inserts the factor ``poly`` with multiplicity ``exp`` into
    # the factorisation ``fac``.
    # If ``fac`` already contains ``poly``, then ``exp`` simply
    # gets added to the exponent of the existing entry.

    void fq_default_poly_factor_concat(fq_default_poly_factor_t res, const fq_default_poly_factor_t fac, const fq_default_ctx_t ctx)
    # Concatenates two factorisations.
    # This is equivalent to calling :func:`fq_default_poly_factor_insert`
    # repeatedly with the individual factors of ``fac``.
    # Does not support aliasing between ``res`` and ``fac``.

    void fq_default_poly_factor_pow(fq_default_poly_factor_t fac, slong exp, const fq_default_ctx_t ctx)
    # Raises ``fac`` to the power ``exp``.

    ulong fq_default_poly_remove(fq_default_poly_t f, const fq_default_poly_t p, const fq_default_ctx_t ctx)
    # Removes the highest possible power of ``p`` from ``f`` and
    # returns the exponent.

    slong fq_default_poly_factor_length(fq_default_poly_factor_t fac, const fq_default_ctx_t ctx)
    # Return the number of factors, not including the unit.

    void fq_default_poly_factor_get_poly(fq_default_poly_t poly, const fq_default_poly_factor_t fac, slong i, const fq_default_ctx_t ctx)
    # Set ``poly`` to factor ``i`` of ``fac`` (numbering starts at zero).

    slong fq_default_poly_factor_exp(fq_default_poly_factor_t fac, slong i, const fq_default_ctx_t ctx)
    # Return the exponent of factor ``i`` of ``fac``.

    bint fq_default_poly_is_irreducible(const fq_default_poly_t f, const fq_default_ctx_t ctx)
    # Returns 1 if the polynomial ``f`` is irreducible, otherwise returns 0.

    bint fq_default_poly_is_squarefree(const fq_default_poly_t f, const fq_default_ctx_t ctx)
    # Returns 1 if ``f`` is squarefree, and 0 otherwise. As a special
    # case, the zero polynomial is not considered squarefree.

    void fq_default_poly_factor_equal_deg(fq_default_poly_factor_t factors, const fq_default_poly_t pol, slong d, const fq_default_ctx_t ctx)
    # Assuming ``pol`` is a product of irreducible factors all of
    # degree ``d``, finds all those factors and places them in
    # factors.  Requires that ``pol`` be monic, non-constant and
    # squarefree.

    void fq_default_poly_factor_split_single(fq_default_poly_t linfactor, const fq_default_poly_t input, const fq_default_ctx_t ctx)
    # Assuming ``input`` is a product of factors all of degree 1, finds a single
    # linear factor of ``input`` and places it in ``linfactor``.
    # Requires that ``input`` be monic and non-constant.

    void fq_default_poly_factor_distinct_deg(fq_default_poly_factor_t res, const fq_default_poly_t poly, slong * const * degs, const fq_default_ctx_t ctx)
    # Factorises a monic non-constant squarefree polynomial ``poly``
    # of degree `n` into factors `f[d]` such that for `1 \leq d \leq n`
    # `f[d]` is the product of the monic irreducible factors of
    # ``poly`` of degree `d`. Factors are stored in ``res``,
    # associated powers of irreducible polynomials are stored in
    # ``degs`` in the same order as factors.
    # Requires that ``degs`` have enough space for irreducible polynomials'
    # powers (maximum space required is ``n * sizeof(slong)``).

    void fq_default_poly_factor_squarefree(fq_default_poly_factor_t res, const fq_default_poly_t f, const fq_default_ctx_t ctx)
    # Sets ``res`` to a squarefree factorization of ``f``.

    void fq_default_poly_factor(fq_default_poly_factor_t res, fq_default_t lead, const fq_default_poly_t f, const fq_default_ctx_t ctx)
    # Factorises a non-constant polynomial ``f`` into monic
    # irreducible factors choosing the best algorithm for given modulo
    # and degree.  The output ``lead`` is set to the leading coefficient of `f`
    # upon return. Choice of algorithm is based on heuristic measurements.

    void fq_default_poly_roots(fq_default_poly_factor_t r, const fq_default_poly_t f, int with_multiplicity, const fq_default_ctx_t ctx)
    # Fill `r` with factors of the form `x - r_i` where the `r_i` are the distinct roots of a nonzero `f` in `F_q`.
    # If `with\_multiplicity` is zero, the exponent `e_i` of the factor `x - r_i` is `1`. Otherwise, it is the largest `e_i` such that `(x-r_i)^e_i` divides `f`.
    # This function throws if `f` is zero, but is otherwise always successful.
