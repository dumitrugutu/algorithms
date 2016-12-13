const insertionSort = (nums) => {
  for (let i = 1; i < nums.length; i++) {
    for (let j = 0; j < i; j++) {
      if (nums[i] < nums[j]) {
        let spliced = nums.splice(i, 1);
        nums.splice(j, 0, spliced[0])
      }
    }
  }
};

// unit tests
// do not modify the below code
// describe('insertion sort', function() {
//   it('should sort correctly', () => {
//     var nums = [10,5,3,8,2,6,4,7,9,1];
//     insertionSort(nums);
//     expect(nums).toEqual([1,2,3,4,5,6,7,8,9,10]);
//   });
// });
