function output = blur(img,w)
B=double(img);
[m,n] = size(B);
k=2*w+1;
for i = 1:m
    for j = 1:n
        p=i-fix(k/2);
        q=i+fix(k/2);
        r=j-fix(k/2);
        s=j+fix(k/2);
        if p<1
            p=1;
        end
        if q>m
            q=m;
        end
        if r<1
            r=1;
        end
        if s>n
            s=n;
        end
        A=B([p:q],[r:s]);
        C(i,j)=mean(A(:));
    end
end
output=uint8(C);
end
