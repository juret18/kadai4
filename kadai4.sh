#!/bin/bash

#最大公約数計算シェル
#1.入力引数チェック
#2.チェックエラーの場合、メッセージ出力（エラー終了させない）
#3.計算関数



#入力パラメーター数チェック
if [ $# -ne 2 ];then
    echo "引数を2個指定くだざい。"
    exit 
fi

#引数1の型チエック
if echo "$1" | grep -q "^[0-9]\+$";then
    echo "数値1は:$1"
else
    echo "数値1は「0-9」の数字を入力してくだざい。"
    exit 
fi

#引数2の型チェック
if echo "$2" | grep -q "^[0-9]\+$";then
    echo "数値2は:$2"
else
    echo "数値2は「0-9」の数字を入力してくだざい。"
    exit 
fi

#パラメーターの値が0の場合、0を返す処理終了
if [ $1 -eq 0 -o $2 -eq 0 ];then
    echo "最大公約数は:0"
    exit 
fi

#変数設定
vara=$1
varb=$2

#最大公約数算出関数
gcd(){
    while [ $vara -ne $varb  ]
    do
    if [ $vara -gt $varb  ];then
        vara=$(( vara-varb ))
    else
        varb=$(( varb-vara ))
    fi
    done
    echo "最大公約数は :$vara"
}

#関数呼び出す
gcd $1 $2
