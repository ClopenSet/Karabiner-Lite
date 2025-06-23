# Karabiner-Lite

A lightweight fork of [Karabiner-Elements](https://github.com/pqrs-org/Karabiner-Elements), focused solely on building the `libkrbn` core library — without any GUI or daemon components.

This repository **tracks only the `libkrbn` module**, and is ideal for embedding into CLI tools, headless environments, or analytics applications such as [KaraStat](https://github.com/yourname/KaraStat).

---

## ✅ Features

- Extracts and builds **only** the `libkrbn.a` static library.
- Preserves upstream structure for easy sync with [Karabiner-Elements].
- Fully local build using `make`.
- Header files exposed under `include/libkrbn/`.

---

## 🛠 Build Instructions

```bash
make
```

The build artifacts will appear in:

* Static library: `build/Debug/libkrbn.a`
* Headers: `include/libkrbn/libkrbn.h`

You can now link this into your own projects (e.g., `swiftc` or C++ tools) via `-L build/Debug -lkrbn`.

---

### ⚠️ Notes

- This project **builds only for Apple Silicon (arm64)** by default.  
  If you want to support Intel-based Macs (x86_64), edit the `Makefile` and add a universal or `x86_64` slice to the build process.

---

## 📁 Structure

```
include/
└── libkrbn/
    ├── libkrbn.h
    └── impl/...
build/
└── Debug/
    ├── libkrbn.a
    └── ...
```

---

## 📌 Version

Currently tracking: **Karabiner-Elements v15.3.90**

---

## 📦 Dependencies

This repository uses [Karabiner-DriverKit-VirtualHIDDevice](https://github.com/pqrs-org/Karabiner-DriverKit-VirtualHIDDevice) as a Git submodule. Clone with:

```bash
git clone --recursive https://github.com/ClopenSet/Karabiner-Lite.git
```

Or initialize it manually:

```bash
git submodule update --init --recursive
```

---

## 📄 License

This project follows the original [Unlicense](https://unlicense.org) of Karabiner-Elements.
