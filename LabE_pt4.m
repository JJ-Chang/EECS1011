function LabE_pt4(n)
axis('equal');
view ([-1 -1 1]);

xlabel('x');
ylabel('y');
zlabel('z');

%draw lab section 8 Last name A-J
if(n == 5) %draw part 3
    figure(1)
    clf(1,'reset')
    axis('equal')
    view([-1 -1 1])
    
    %cyan 1x2
    patch([0 0 0 0], [2 1 1 2], [0 0 1 1], 'cyan'); %small wall 1
    patch([2 2 2 2], [2 1 1 2], [0 0 1 1], 'cyan'); %small wall 2
    patch([2 0 0 2], [2 2 2 2], [0 0 1 1], 'cyan'); %long wall 1
    patch([2 0 0 2], [1 1 1 1], [0 0 1 1], 'cyan'); %long wall 2
    patch([2 0 0 2], [2 2 1 1], [1 1 1 1], 'cyan'); %roof
    patch([2 0 0 2], [2 2 1 1], [0 0 0 0], 'cyan'); %floor
    
    %green 2x2
    patch([1 1 1 1], [1 -1 -1 1], [0 0 1 1], 'green'); %wall 1
    patch([3 3 3 3], [1 -1 -1 1], [0 0 1 1], 'green'); %wall 2
    patch([3 1 1 3], [ 1 1 1 1], [0 0 1 1], 'green'); %wall 3
    patch([3 1 1 3], [-1 -1 -1 -1], [0 0 1 1], 'green'); %wall 4
    patch([3 1 1 3], [1 1 -1 -1], [1 1 1 1], 'green'); %roof
    patch([3 1 1 3], [1 1 -1 -1], [0 0 0 0], 'green'); %floor
    
    %blue 1x4
    patch([4 3 3 4], [-2 -2 -2 -2], [0 0 1 1], 'blue'); %small wall 1
    patch([4 3 3 4], [2 2 2 2], [0 0 1 1], 'blue'); %small wall 2
    patch([3 3 3 3], [-2 2 2 -2], [0 0 1 1], 'blue'); %long wall 1
    patch([4 4 4 4], [-2 2 2 -2], [0 0 1 1], 'blue'); %long wall 2
    patch([4 3 3 4], [-2 2 2 -2], [1 1 1 1], 'blue'); %roof
    patch([4 3 3 4], [-2 2 2 -2], [0 0 0 0], 'blue'); %floor
    
    title('Lab group 8, last name A-J pt4 input 5');
elseif(n == 3) %draw lab 8 A-J
    figure(1)
    clf(1,'reset')
    axis('equal')
    view([-1 -1 1])
    
    %cyan 1x2
    patch([0 0 0 0], [2 1 1 2], [0 0 1 1], 'cyan'); %small wall 1
    patch([2 2 2 2], [2 1 1 2], [0 0 1 1], 'cyan'); %small wall 2
    patch([2 0 0 2], [2 2 2 2], [0 0 1 1], 'cyan'); %long wall 1
    patch([2 0 0 2], [1 1 1 1], [0 0 1 1], 'cyan'); %long wall 2
    patch([2 0 0 2], [2 2 1 1], [1 1 1 1], 'cyan'); %roof
    patch([2 0 0 2], [2 2 1 1], [0 0 0 0], 'cyan'); %floor
    
    %green 2x2
    patch([1 1 1 1], [1 -1 -1 1], [0 0 1 1], 'green'); %wall 1
    patch([3 3 3 3], [1 -1 -1 1], [0 0 1 1], 'green'); %wall 2
    patch([3 1 1 3], [ 1 1 1 1], [0 0 1 1], 'green'); %wall 3
    patch([3 1 1 3], [-1 -1 -1 -1], [0 0 1 1], 'green'); %wall 4
    patch([3 1 1 3], [1 1 -1 -1], [1 1 1 1], 'green'); %roof
    patch([3 1 1 3], [1 1 -1 -1], [0 0 0 0], 'green'); %floor
    
    %blue 1x4
    patch([4 3 3 4], [-2 -2 -2 -2], [0 0 1 1], 'blue'); %small wall 1
    patch([4 3 3 4], [2 2 2 2], [0 0 1 1], 'blue'); %small wall 2
    patch([3 3 3 3], [-2 2 2 -2], [0 0 1 1], 'blue'); %long wall 1
    patch([4 4 4 4], [-2 2 2 -2], [0 0 1 1], 'blue'); %long wall 2
    patch([4 3 3 4], [-2 2 2 -2], [1 1 1 1], 'blue'); %roof
    patch([4 3 3 4], [-2 2 2 -2], [0 0 0 0], 'blue'); %floor
    
    %pink 1x4
    patch([4 3 3 4], [-2 -2 -2 -2], [1 1 2 2], 'magenta'); %small wall 1
    patch([4 3 3 4], [2 2 2 2], [1 1 2 2], 'magenta'); %small wall 2
    patch([3 3 3 3], [-2 2 2 -2], [1 1 2 2], 'magenta'); %long wall 1
    patch([4 4 4 4], [-2 2 2 -2], [1 1 2 2], 'magenta'); %long wall 2
    patch([4 3 3 4], [-2 2 2 -2], [2 2 2 2], 'magenta'); %roof
    patch([4 3 3 4], [-2 2 2 -2], [1 1 1 1], 'magenta'); %floor
    
    title('Lab group 8, last name A-J pt4 input 3')
else
    figure(1)
    clf(1,'reset')
    axis('equal')
    view([-1 -1 1])
    
    %cyan 1x2
    patch([0 0 0 0], [2 1 1 2], [0 0 1 1], 'black'); %small wall 1
    patch([2 2 2 2], [2 1 1 2], [0 0 1 1], 'black'); %small wall 2
    patch([2 0 0 2], [2 2 2 2], [0 0 1 1], 'black'); %long wall 1
    patch([2 0 0 2], [1 1 1 1], [0 0 1 1], 'black'); %long wall 2
    patch([2 0 0 2], [2 2 1 1], [1 1 1 1], 'black'); %roof
    patch([2 0 0 2], [2 2 1 1], [0 0 0 0], 'black'); %floor
    
    %green 2x2
    patch([1 1 1 1], [1 -1 -1 1], [0 0 1 1], 'black'); %wall 1
    patch([3 3 3 3], [1 -1 -1 1], [0 0 1 1], 'black'); %wall 2
    patch([3 1 1 3], [ 1 1 1 1], [0 0 1 1], 'black'); %wall 3
    patch([3 1 1 3], [-1 -1 -1 -1], [0 0 1 1], 'black'); %wall 4
    patch([3 1 1 3], [1 1 -1 -1], [1 1 1 1], 'black'); %roof
    patch([3 1 1 3], [1 1 -1 -1], [0 0 0 0], 'black'); %floor
    
    %blue 1x4
    patch([4 3 3 4], [-2 -2 -2 -2], [0 0 1 1], 'black'); %small wall 1
    patch([4 3 3 4], [2 2 2 2], [0 0 1 1], 'black'); %small wall 2
    patch([3 3 3 3], [-2 2 2 -2], [0 0 1 1], 'black'); %long wall 1
    patch([4 4 4 4], [-2 2 2 -2], [0 0 1 1], 'black'); %long wall 2
    patch([4 3 3 4], [-2 2 2 -2], [1 1 1 1], 'black'); %roof
    patch([4 3 3 4], [-2 2 2 -2], [0 0 0 0], 'black'); %floor
    
    title('Lab group 8, last name A-J pt4 else case')
end
end