# docker-allure
Some amazing Docker images to work with Allure Out Of The Box

[![Docker Hub](https://img.shields.io/static/v1.svg?color=4edafc&labelColor=555555&logoColor=ffffff&style=flat&label=lcaparros/allure&message=Docker%20Hub&logo=docker)](https://hub.docker.com/r/lcaparros/allure)
[![Docker Pulls](https://img.shields.io/docker/pulls/lcaparros/allure.svg?color=4edafc&labelColor=555555&logoColor=ffffff&style=flat&label=pulls&logo=docker)](https://hub.docker.com/r/lcaparros/allure)
[![Docker Stars](https://img.shields.io/docker/stars/lcaparros/allure.svg?color=4edafc&labelColor=555555&logoColor=ffffff&style=flat&label=stars&logo=docker)](https://hub.docker.com/r/lcaparros/allure)
[![GitHub Repository](https://img.shields.io/static/v1.svg?color=4edafc&labelColor=555555&logoColor=ffffff&style=flat&label=lcaparros/docker-allure&message=GitHub%20Repo&logo=github)](https://github.com/lcaparros/docker-allure)
[![GitHub Stars](https://img.shields.io/github/stars/lcaparros/docker-allure.svg?color=4edafc&labelColor=555555&logoColor=ffffff&style=flat&logo=github)](https://github.com/lcaparros/docker-allure)
[![GitHub Release](https://img.shields.io/github/release/lcaparros/docker-allure.svg?color=4edafc&labelColor=555555&logoColor=ffffff&style=flat&logo=github)](https://github.com/lcaparros/docker-allure/releases)
[![GitHub](https://img.shields.io/static/v1.svg?color=4edafc&labelColor=555555&logoColor=ffffff&style=flat&label=lcaparros&message=GitHub&logo=github)](https://github.com/lcaparros "view the source for all of our repositories.")

# Usage

It is necessary to share a volume to the current directory to make the necessary Allure files available for the Docker container (use the `/files` volume in the container). A good way to use this image could be to create a new alias in your bash_profile file:

```shell
alias allure='docker run --rm -it -v $(pwd):/files lcaparros/allure:<version>'
```

Now you could just type `allure` in the CLI and it will work as the real Allure binary.

## Word report

If you wish to generate a `.docx` report, you can use the image labeled `$VERSION-word`. This version will include [allure-docx](https://github.com/typhoon-hil/allure-docx) tool, so it will be available for its usage. For example, a quick way to generate word report will be by:

```bash
allure-docs allure-results allureReport.docx
```

Please refer to their documentation for getting more informatio about the different options or how to use this tool.

# Contribution

## Pull Requests

Create a new Pull Request with the necessary changes. After being reviewed and merged a new tag will be generated, creating a new Release and publishing the new version.

```shell
$ git tag -a v1.0.9 -m "This is my new amazing version"
$ git push origin v1.0.9
```

## How to push a new version of the image manually

```shell
$ docker build --build-arg VERSION=<version> --build-arg BUILD_DATE="$(date +%Y/%m/%dT%H:%M:%S)" -t allure .
$ docker tag allure lcaparros/allure:<version>
$ docker push lcaparros/allure:<version>
```
