const mergeSort = (nums) => {
  if (nums.length < 2) {
    return nums;
  }

  const length = nums.length;
  const mid = Math.floor(length / 2);
  const left = nums.slice(0, mid);
  const right = nums.slice(mid, length);

  return merge(mergeSort(left), mergeSort(right))
};

const merge = (left, right) => {
  const result = [];
  while (left.length && right.length) {
    if (left[0] <= right[0]) {
      result.push(left.shift());
    }
    else {
      result.push(right.shift());
    }
  }

  while(left.length) {
    result.push(left.shift());
  }

  while(right.length) {
    result.push(right.shift());
  }

  return result;
};

// unit tests
// do not modify the below code
// describe('insertion sort', function() {
//   it('should sort correctly', () => {
//     var nums = [10,5,3,8,2,6,4,7,9,1];
//     var ans = mergeSort(nums);
//     expect(ans).toEqual([1,2,3,4,5,6,7,8,9,10]);
//   });
// });
