# ================================
# LaTeXmk configuration
# ================================

# 主文件
$root = 'main.tex';

# 输出目录
$out_dir = 'build';
$aux_dir = 'build';

# 编译引擎
$pdf_mode = 5;
$xelatex = 'xelatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';

# 自动运行 BibTeX 或 Biber
$bibtex_use = 2;   # 自动检测使用 bibtex 或 biber

# 监控的额外文件（章节、图表等）
add_cus_dep('tex', 'pdf', 0, 'do_nothing');  # 防止误触发
# @default_files = ('main.tex', 'preamble.tex', 'content/*.tex');

# 允许子目录中的图像
# $ENV{'TEXINPUTS'} = ".:figures//:tables//:";

# 清理时保留 PDF
$clean_ext = 'aux bbl bcf blg fdb_latexmk fls log out run.xml synctex.gz toc';

# 打开连续预览（可选）
$pdf_previewer = 'start evince';

# ================================
# 自定义函数（占位）
# ================================
sub do_nothing {}
