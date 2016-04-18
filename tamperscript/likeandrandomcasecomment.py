import re

from lib.core.common import randomRange
from lib.core.data import kb
from lib.core.enums import PRIORITY
from lib.core.enums import DBMS


__priority__ = PRIORITY.LOW

def tamper(payload, **kwargs):

    retVal = payload

    if payload:
        for match in re.finditer(r"\b[A-Za-z_]+\b", payload):
            word = match.group()

            if len(word) < 2:
                continue

            if word.upper() in kb.keywords:
                _ = word[0]

                for i in xrange(1, len(word) - 1):
                    _ += "%s%s" % ("/**/" if randomRange(0, 1) else "", word[i])

                _ += word[-1]

                if "/**/" not in _:
                    index = randomRange(1, len(word) - 1)
                    _ = word[:index] + "/**/" + word[index:]

                retVal = retVal.replace(word, _)


    if payload:
        for match in re.finditer(r"[A-Za-z_]+", retVal):
            word = match.group()

            if word.upper() in kb.keywords:
                while True:
                    _ = ""

                    for i in xrange(len(word)):
                        _ += word[i].upper() if randomRange(0, 1) else word[i].lower()

                    if len(_) > 1 and _ not in (_.lower(), _.upper()):
                        break

                retVal = retVal.replace(word, _)


    if payload:
        retVal = re.sub(r"\s*=\s*", " LIKE ", retVal)

    return retVal

    
