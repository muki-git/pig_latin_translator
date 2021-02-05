import sys
import requests

def translate(word: str) -> str:
    data = {"word": word}
    if response.status_code == 201:
        return response.json().get('word')
    return 'Bad Request ' + response.status_code

if __name__ == '__main__':
    arg = sys.argv[1]
    word = translate(arg)
    print('ARG: ', word)
