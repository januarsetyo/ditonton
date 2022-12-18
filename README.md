[![Codemagic build status](https://api.codemagic.io/apps/639f0713ed1dbd59a01f9cf4/639f0713ed1dbd59a01f9cf3/status_badge.svg)](https://codemagic.io/apps/639f0713ed1dbd59a01f9cf4/639f0713ed1dbd59a01f9cf3/latest_build)
# CI Codemagic flutter-expert-project-main
    Preparing build machine             25s
    Fetching app sources                1s
    Installing dependencies             48s
    Building Android                    2m 7s
    Publishing                          5s
    Cleaning up                         < 1s

# Build overview
    ID          : 639f08bfd2ef77b4c5e36342
    Index       : 4
    Status      : finished
    Workflow    : Default Workflow
    Started by  :januarsn2@gmail.com
    Started     : a day ago Dec 18th, 2022 at 19:34 WIB
    Duration    : 2m 9s
    Machine     : Mac mini M1
    Branch      : master
    Commit      : 51cfada

# Artifacts
    app-release.aab [20.85 MB]
    mapping.txt [1.08 MB]

# Current configuration
    Flutter channel: default
    Mode: release
    Build for: Android 

[![Codemagic build status](https://api.codemagic.io/apps/639f0713ed1dbd59a01f9cf4/639f0713ed1dbd59a01f9cf3/status_badge.svg)](https://codemagic.io/apps/639f0713ed1dbd59a01f9cf4/639f0713ed1dbd59a01f9cf3/latest_build)
# Codemagic
![codemagic](https://user-images.githubusercontent.com/91107708/208299240-a9328f71-8d18-4ad1-97a1-89e5572f8051.jpeg)
# Firebase Analytics
![analytics](https://user-images.githubusercontent.com/91107708/208299270-d2139066-082c-42e9-aec1-37d7363e3bff.jpeg)
# Firebase Crashlytics
![crashlytics](https://user-images.githubusercontent.com/91107708/208299300-9c22bf34-a690-4286-8b80-ae5c4df859ef.jpeg)

# a199-flutter-expert-project

Repository ini merupakan starter project submission kelas Flutter Expert Dicoding Indonesia.

---

## Tips Submission Awal

Pastikan untuk memeriksa kembali seluruh hasil testing pada submissionmu sebelum dikirimkan. Karena kriteria pada submission ini akan diperiksa setelah seluruh berkas testing berhasil dijalankan.


## Tips Submission Akhir

Jika kamu menerapkan modular pada project, Anda dapat memanfaatkan berkas `test.sh` pada repository ini. Berkas tersebut dapat mempermudah proses testing melalui *terminal* atau *command prompt*. Sebelumnya menjalankan berkas tersebut, ikuti beberapa langkah berikut:
1. Install terlebih dahulu aplikasi sesuai dengan Operating System (OS) yang Anda gunakan.
    - Bagi pengguna **Linux**, jalankan perintah berikut pada terminal.
        ```
        sudo apt-get update -qq -y
        sudo apt-get install lcov -y
        ```
    
    - Bagi pengguna **Mac**, jalankan perintah berikut pada terminal.
        ```
        brew install lcov
        ```
    - Bagi pengguna **Windows**, ikuti langkah berikut.
        - Install [Chocolatey](https://chocolatey.org/install) pada komputermu.
        - Setelah berhasil, install [lcov](https://community.chocolatey.org/packages/lcov) dengan menjalankan perintah berikut.
            ```
            choco install lcov
            ```
        - Kemudian cek **Environtment Variabel** pada kolom **System variabels** terdapat variabel GENTHTML dan LCOV_HOME. Jika tidak tersedia, Anda bisa menambahkan variabel baru dengan nilai seperti berikut.
            | Variable | Value|
            | ----------- | ----------- |
            | GENTHTML | C:\ProgramData\chocolatey\lib\lcov\tools\bin\genhtml |
            | LCOV_HOME | C:\ProgramData\chocolatey\lib\lcov\tools |
        
2. Untuk mempermudah proses verifikasi testing, jalankan perintah berikut.
    ```
    git init
    ```
3. Kemudian jalankan berkas `test.sh` dengan perintah berikut pada *terminal* atau *powershell*.
    ```
    test.sh
    ```
    atau
    ```
    ./test.sh
    ```
    Proses ini akan men-*generate* berkas `lcov.info` dan folder `coverage` terkait dengan laporan coverage.
4. Tunggu proses testing selesai hingga muncul web terkait laporan coverage.

