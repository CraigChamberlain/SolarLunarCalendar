Get-ChildItem ./_data/years |
 ForEach-Object { 
     $year = $_.BaseName -replace 'y', '';
     mkdir "./_posts/month/$year";
     $months = ($_ | Get-Content | ConvertFrom-Json).Count;
     0..$months | ForEach-Object { touch ("./_posts/month/{0}/{0}-01-01-{1:d2}.md" -f $year, $_) }
     
     }
