import re




strings = [
        "hydra1",
        "hydra2",
        "hydra3",
        "hydra4",
        "hydra-jong",
        "yeti",
        "hydra7",
        "snowman",
        "sge7",
        "bigmac",
        "pd3",
        "pd4",
        "pd5",
        "pd6",
        "pd7",
        "pd8",
        "pd9",
        "hydra13",
        "hydra14",
        "hydra15",
        "hydra16",
        "sge13",
        "sge14",
        "sge15",
        "sge16",
        "sge17",
        "sge18",
        "pd10",
        "pd11",
        "pd15",
        "pd16",
        "thor",
        "mentorcompile",
        "sge20",
        "sge21",
        "sge22",
        "sge23",
        "sge29",
        "sge30",
        "sge31",
        "sge32",
        "cs1",
        "cs2",
        "cs3",
        "cs4",
        "cs5",
        "cs6",
        "cs7",
        "cs8",
        "cs9",
        "cs10",
        "cs11",
        "cs12",
        "cs13",
        "cs14",
        "cs15",
        "cs16",
        "cs17",
        "cs18",
        "cs19",
        "cs20",
        "cs21",
        "cs22",
        "cs23",
        "cs24",
        "cs25",
        "cs26",
        "cs27"]


def my_split(s):
    return filter(None, re.split(r'(\d+)', s))

my_split('SSS234')
