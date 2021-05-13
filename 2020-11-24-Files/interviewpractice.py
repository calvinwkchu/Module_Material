# Fill in the blank. Don't make any function calls.*


# // Events start in the morning on the start date and end in the evening on the end date

Event CreateEvent(int eventId, Date startDate, int eventDurationInDays) {

    Event event = new Event();

    event.eventId = eventId;

    int startDayOfWeek = GetDayOfWeek(startDate);

    int endDayOfWeek = (eventDurationInDays + startDayOfWeek) % 7

    event.startDayOfWeek = startDayOfWeek;

    event.endDayOfWeek = endDayOfWeek;

    assert(0 <= event.startDayOfWeek && event.startDayOfWeek < 7);

    assert(0 <= event.endDayOfWeek && event.endDayOfWeek < 7);

    return event;

}

# Give an example of an integer value of n for which the following code will raise an exception*
p = 0

for i in range(n):

    if n % 3 == 0:

        q = i + 4 if n < 40 else None

    else:

        q = i + 40

    p += float(q) / 1000







Which Python regular expression can be used to extract a 3-tuple like (125, 8, 1212) from the following string?*
<div>125mm x 8mm x 1212mm</div>

<div>[0-9]{4}mm x [0-9]{4}mm x [0-9]{4}mm</div>
.*([0-9])mm x ([0-9])mm x ([0-9])mm.*
.*(.*)mm x (.*)mm x (.*)mm.*
<div>([0-9]{0,4})mm x ([0-9]{0,4})mm x ([0-9]{0,4})mm</div>

# What is the run-time complexity of the following algorithm, in terms of n and m?*
def print_all_codes(n, m):

    def print_01_codes(current, num_digits):

        if num_digits == 0:

            print(current)

        else:

            print_01_codes('0' + current, num_digits - 1)

            print_01_codes('1' + current, num_digits - 1)

    upper_bound = 0

    while True:

        for i in range(upper_bound):

            print_01_codes('', 0)

        if upper_bound > 2:

            break

        upper_bound += 1

m(1) = 1
m(2) = 3
m(3) = 6
m(4) = 10
n-complexity = 2 ^ n
m-complexity = mlog(m)
