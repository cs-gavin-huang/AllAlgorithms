'''
Author: geekli
Date: 2021-01-05 22:15:20
LastEditTime: 2021-01-05 22:15:31
LastEditors: your name
Description: 
FilePath: /AllAlgorithms/pythonGuide/ex2.py
'''
class Solution:
    def isPerfectSquare(self, num):
        l = 0
        r = num
        while (r - l > 1):
            mid = (l + r) / 2
            if (mid * mid <= num):
                l = mid
            else:
                r = mid
        ans = l
        if (l * l < num):
            ans = r
        return ans * ans == num
#主函数
if __name__ == '__main__':
    num = 16
    print("初始值：", num)
    solution = Solution()
    print("结果：", solution.isPerfectSquare(num))