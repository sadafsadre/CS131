# Setting file separator to comma
BEGIN {
    FS = ","
}

# Skipping header and computing totals
NR > 1 {
    # Storing  name
    students[$1] = $2

    # Computing total score
    scores[$1] = $3 + $4 + $5

    # Computing  average using function
    averages[$1] = get_average(scores[$1])

    # Tracking top and lowest scores
    if (NR == 2 || scores[$1] > max_score) {
        max_score = scores[$1]
        top_id = $1
    }

    if (NR == 2 || scores[$1] < min_score) {
        min_score = scores[$1]
        low_id = $1
    }
}

# Function to calculate average score
function get_average(total) {
    return total / 3
}

# Final output
END {
    for (id in students) {
        print "Name:", students[id]
        print "Total Score:", scores[id]
        printf "Average Score: %.4f\n", averages[id]
        if (averages[id] >= 70)
            print "Pass"
        else
            print "Fail"
    }

    print "Top Scoring Student:", students[top_id], "with", max_score
    print "Lowest Scoring Student:", students[low_id], "with", min_score
}

