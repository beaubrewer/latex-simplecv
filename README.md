# 📄 Modern LaTeX CV Template

A clean, professional CV template built with LaTeX featuring a distinctive gray sidebar design. Perfect for tech leaders, executives, and professionals who want their CV to stand out while remaining elegant and readable.

## ✨ Features

- **🎨 Grayscale Theme** - Clean, professional sidebar layout with customizable colors
- **📱 Contact Icons** - Modern FontAwesome icons for email, phone, LinkedIn, and location
- **🖼️ Optional Company Logos** - Toggle logos on/off with a single variable
- **📊 Structured Sections** - Professional experience, skills, interests, and humanitarian work
- **🎯 Two-Column Layout** - Sidebar for personal info, main column for experience
- **⚡ Highly Customizable** - Easy-to-modify color schemes and spacing

## 🚀 Quick Start (macOS)

### Prerequisites

1. **Install MacTeX** (Full LaTeX distribution for macOS)
   ```bash
   brew install --cask mactex
   ```
   *This will take a while (~4GB download).

   Alternative: Download directly from [tug.org/mactex](https://tug.org/mactex/)

2. **Install Visual Studio Code (if you don't have it already)**
   Download from [code.visualstudio.com](https://code.visualstudio.com/)

3. **Install LaTeX Workshop Extension**
   - Open VS Code
   - Press `Cmd+Shift+X` to open Extensions
   - Search for "LaTeX Workshop" by James Yu
   - Click Install

### Getting Started

1. **Clone or download this repository**
   ```bash
   git clone <your-repo-url>
   cd <your repo-directory>
   ```

2. **Open in VS Code**
   ```bash
   code .
   ```

3. **Edit `main.tex`** with your information

4. **Build the PDF**
   - Open `main.tex` in VS Code
   - Press `Cmd+Option+B` (or use the green play button in the top right)
   - The PDF will automatically open when compilation completes!

## 📝 Customization Guide

### Personal Information

Edit the header section in `main.tex`:
```latex
\simpleheader{headercolour}{FirstName}{LastName}{Your tagline here}{white}{descriptioncolor}
```

Update contact information:
```latex
\href{mailto:your@email.com}{\infobubble{\faEnvelope}{black}{white}{your@email.com}}
\href{tel:1234567890}{\infobubble{\faPhone}{black}{white}{123.456.7890}}
\href{https://linkedin.com/in/yourprofile}{\infobubble{\faLinkedin}{black}{white}{yourprofile}}
```

### Show/Hide Company Logos (some people recommend against logos - your call)

In `simplecv-commands.sty`, line 57:
```latex
\showlogostrue   % Show logos
\showlogosfalse  % Hide logos (default)
```

If showing logos, place your logo images in the `images/` folder and reference them in your job entries.

### Colors

The template uses a grayscale theme with customizable accent colors. Edit colors in `simplecv.cls`:

```latex
\definecolor{headerblue}{HTML}{2EB6E1}    % Accent blue
\definecolor{cvgreen}{HTML}{78B669}       % Success/location green
\definecolor{descriptioncolor}{HTML}{CCCCCC}  % Header description
```

### Page Layout

Adjust margins in `main.tex`:
```latex
\usepackage[top=1cm, left=1cm, right=1cm, bottom=0cm, a4paper]{geometry}
```

Adjust column widths:
```latex
\setlength{\leftcolwidth}{0.23\textwidth}
\setlength{\rightcolwidth}{0.75\textwidth}
```

## 📂 File Structure

```
Beau_CV/
├── main.tex                    # Your CV content (edit this!)
├── simplecv.cls                # Document class (theme definition)
├── simplecv-commands.sty       # Custom commands and styling
├── images/                     # Company logos (optional)
│   ├── logo-company1.png
│   └── logo-company2.png
└── README.md                   # You are here!
```

## 🎨 Adding Experience

### Professional Experience

```latex
\cvevent{2020--Present}{Company Name}{Job Title}{Location \color{cvgreen}}{%
    \begin{cvitemize}
        \item Your achievement or responsibility here
        \item Another key accomplishment
    \end{cvitemize}%
}{logo-filename}
```

### Humanitarian/Volunteer Work

```latex
\cvsummary{Organization Name}{Brief description of your contribution.}
```

## 🔧 Troubleshooting

### "Command not found: pdflatex"
Make sure MacTeX is installed and restart your terminal/VS Code.

### PDF not updating
- Save `main.tex` (`Cmd+S`)
- Clean auxiliary files: Delete `main.aux`, `main.log`, `main.out`, `main.synctex.gz`
- Rebuild with `Cmd+Option+B`

### Fonts look weird
The template uses the Raleway font family. If missing, either:
1. Install Raleway: `brew install --cask font-raleway`
2. Or change the font in `main.tex`:
   ```latex
   \usepackage[default]{raleway}  % Change to another font
   ```

### Logo images not appearing
- Ensure images are in the `images/` folder
- Check that `\showlogostrue` is set in `simplecv-commands.sty`
- Verify the filename matches exactly (case-sensitive!)

## 💡 Pro Tips

- **Keep it concise**: Aim for 1-2 pages maximum
- **Quantify achievements**: Use numbers, percentages, and metrics
- **Use action verbs**: Led, architected, spearheaded, directed, etc.
- **Test colors**: Print a test page to ensure good contrast
- **PDF size**: This will be really small unless you add HUGE logo images (dont't do that)

## 🎓 LaTeX Resources

New to LaTeX? Check these out:
- [Overleaf LaTeX Tutorial](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)
- [LaTeX Wikibook](https://en.wikibooks.org/wiki/LaTeX)
- [CTAN (Package Repository)](https://ctan.org/)

## 📜 Credits

This template is a mashup inspired by:
- [Hipster CV](https://www.latextemplates.com/template/hipster-cv)
- [Friggeri Resume](https://www.latextemplates.com/template/friggeri-resume-cv)
- [Twenty Seconds CV](https://www.latextemplates.com/template/twenty-seconds-resumecv)

## 📄 License

Feel free to use this template for your personal or commercial projects.

---

**Made with ❤️ and LaTeX**
