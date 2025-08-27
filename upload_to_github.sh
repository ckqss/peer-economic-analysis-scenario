#!/bin/bash

echo "GitHub仓库上传脚本"
echo "==================="
echo ""
echo "请按照以下步骤操作："
echo ""
echo "1. 首先在GitHub上创建新仓库（不要初始化README）"
echo "2. 复制仓库的HTTPS或SSH URL"
echo "3. 运行以下命令（将YOUR_REPO_URL替换为实际的仓库URL）："
echo ""
echo "git remote add origin YOUR_REPO_URL"
echo "git branch -M main"
echo "git push -u origin main"
echo ""
echo "示例："
echo "git remote add origin https://github.com/username/peer-economic-analysis-scenario.git"
echo "git branch -M main"
echo "git push -u origin main"
echo ""
echo "如果您已经有了仓库URL，请输入它："
read -p "仓库URL (或按Enter跳过): " repo_url

if [ ! -z "$repo_url" ]; then
    echo "添加远程仓库..."
    git remote add origin "$repo_url"
    
    echo "设置主分支..."
    git branch -M main
    
    echo "推送到GitHub..."
    git push -u origin main
    
    echo "完成！您的代码已成功上传到GitHub仓库: $repo_url"
else
    echo "请手动执行上述命令完成上传。"
fi