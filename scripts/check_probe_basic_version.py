from probe_basic._version import get_versions

release_version = get_versions().get('version')
print(release_version.replace('+,', '-'))
