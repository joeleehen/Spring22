def my_zip(*iters):
    if not iters or [] in iters:
        return []

    atorList = []
    for term in iters:
        atorList += [iter(term)]

    while True:
        try:
            elements = []
            for gen in atorList:
                elements += [next(gen)]
            yield tuple(elements)
        except StopIteration:
            break
