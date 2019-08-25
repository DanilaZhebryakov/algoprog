import ACHIEVES from '../../client/lib/achieves'

achievesConditions = (user) ->
    fullcontests:
        30: 3 * user.chocos?[0] >= 30
        15: 3 * user.chocos?[0] >= 15
        6: 3 * user.chocos?[0] >= 6
        3: 3 * user.chocos?[0] >= 3
    clearcontests:
        7: user.chocos?[1] >= 7
        4: user.chocos?[1] >= 4
        2: user.chocos?[1] >= 2
        1: user.chocos?[1] >= 1
    plusone:
        14: 2 * user.chocos?[2] >= 14
        8: 2 * user.chocos?[2] >= 8
        4: 2 * user.chocos?[2] >= 4
        2: 2 * user.chocos?[2] >= 2
    cf:
        part: user.cf?.rating
        1500: user.cf?.rating >= 1500
        1700: user.cf?.rating >= 1700
        1900: user.cf?.rating >= 1900
    a:
        3: user.activity >= 3
        6: user.activity >= 6 and user.level.current >= "1Б"
        10: user.activity >= 10 and user.level.current >= "2"
        15: user.activity >= 15 and user.level.current >= "3"

export default calculateAchieves = (user) ->
    result = user?.achieves || []
    conditions = achievesConditions(user)
    for prefix, c of conditions
        suffixScore = (suffix) ->
            ACHIEVES["#{prefix}:#{suffix}"]?.score

        result = (r for r in result when not (r.startsWith(prefix + ":")))
        bestSuffix = undefined
        for suffix, condition of c
            if not condition
                continue
            if not bestSuffix
                bestSuffix = suffix
                continue
            if suffixScore(bestSuffix) < suffixScore(suffix)
                bestSuffix = suffix
        if bestSuffix
            result.push("#{prefix}:#{bestSuffix}")

    return result
