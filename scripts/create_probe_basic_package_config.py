import sys
from xml.etree import ElementTree
from datetime import date


def main(args):

    in_config_file = args[1]
    out_config_file = args[2]
    release_version = args[3]

    tree = ElementTree.parse(in_config_file)
    root = tree.getroot()

    version_xml = root.find(".//Version")
    version_xml.text = release_version

    date_xml = root.find(".//ReleaseDate")
    date_xml.text = str(date.today())

    tree.write(out_config_file, encoding='utf-8', xml_declaration=True)


if __name__ == "__main__":
    main(sys.argv)
