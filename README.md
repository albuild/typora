# albuild-typora

Yet another unofficial Typora package for Amazon Linux 2.

## Build, Install and Run (Amazon WorkSpaces)

### System Requirements

* Docker

### Instructions

1. Clone this repository.

    ```
    git clone https://github.com/albuild/typora.git
    ```

1. Go to the repository.

    ```
    cd typora
    ```

1. Build a new image.

    ```
    bin/build
    ```

1. Extract the built package from the image and install it.

    ```
    bin/install
    ```

1. Delete the image.

    ```
    bin/rmi
    ```

1. To run Typora, execute the typora command.

    ```
    typora
    ```
