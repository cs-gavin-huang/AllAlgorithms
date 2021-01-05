'''
Author: geekli
Date: 2021-01-05 22:18:42
LastEditTime: 2021-01-05 22:18:57
LastEditors: your name
Description: 
FilePath: /AllAlgorithms/pythonGuide/ex3.py
'''
class Solution:
    def checkPowerOf2(self, n):
        ans = 1
        for i in range(31):
            if ans == n:
                return True
            ans = ans << 1
        return False
if __name__ == '__main__':
    temp = Solution()
    nums1 = 16
    nums2 = 17
    print(("输入："+str(nums1)))
    print(("输出："+str(temp.checkPowerOf2(nums1))))
    print(("输入："+str(nums2)))
    print(("输出："+str(temp.checkPowerOf2(nums2))))