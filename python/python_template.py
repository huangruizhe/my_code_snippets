import logging
import argparse

logging.basicConfig(
    format = "%(asctime)s - %(levelname)s - %(funcName)s:%(lineno)d - %(message)s",
    level = 10
)

def parse_opts():
    parser = argparse.ArgumentParser(
        description='',
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)

    parser.add_argument('--ark', type=str, default=None, help='')
    parser.add_argument('--out', type=str, help='')

    opts = parser.parse_args()
    logging.info(f"Parameters: {vars(opts)}")
    return opts


def main(opts):
    pass


if __name__ == '__main__':
    opts = parse_opts()

    main(opts)
