function output = resultEva(count_cus, waitingTime1, waitingTime2, waitingTimeEx, 
serviceEnd1, serviceEnd2, serviceEndEx, interArrivalTime, arrivalTime, 
serviceTime1, serviceTime2, serviceTimeEx, 
timeSpent1, timeSpent2, timeSpentEx)

    
printf('\n-------------------DATA EVALUATION-------------------\n');

for loop = 1:count_cus

    if i < count_cus
            totalCustomer = totalCustomer + 1;
    end

    if counter(loop) == 1
        totalCustomer1 = totalCustomer1 + 1;
    elseif counter(loop) == 2
        totalCustomer2 = totalCustomer2 + 1;
    elseif counter(loop) == 3
        totalCustomerEx = totalCustomerEx + 1;
    end
end

totalCustomerWait1 = 0;
for loop = 1:length(waitingTime1)
    if waitingTime1(loop) ~= 0
        totalCustomerWait1 = totalCustomerWait1 + 1;
    end
end

totalCustomerWait2 = 0;
for loop = 1:length(waitingTime2)
    if waitingTime2 ~= 0
        totalCustomerWait2 = totalCustomerWait2 + 1;
    end
end

totalCustomerWaitEx = 0;
for loop = 1:length(waitingTimeEx)
    if waitingTimeEx ~= 0
        totalCustomerWaitEx = totalCustomerWaitEx + 1;
    end
end

totalCustomerWait = totalCustomerWait1 + totalCustomerWait2 + totalCustomerWaitEx;

total_SimulatedTime1 = serviceEnd1(length(serviceEnd1));
total_SimulatedTime2 = serviceEnd2(length(serviceEnd2));
total_SimulatedTimeEx = serviceEndEx(length(serviceEndEx));
if total_SimulatedTime1 > total_SimulatedTime2
    if total_SimulatedTime1 > total_SimulatedTimeEx
        total_SimulatedTime = total_SimulatedTime1;
    else
        total_SimulatedTime = total_SimulatedTimeEx;
else
    if total_SimulatedTime2 > total_SimulatedTimeEx
        total_SimulatedTime = total_SimulatedTime2;
    else
        total_SimulatedTime = total_SimulatedTimeEx;
end

averageInterArrivalTime = sum(interArrivalTime)/totalCustomer;
fprintf('\nAverage Inter-arrival Time = %2.6f\n', averageInterArrivalTime);

averageArrivalTime = sum(arrivalTime)/totalCustomer;
fprintf('\nAverage Arrival Time = %2.6f\n', averageArrivalTime);

averageServiceTime1 = sum(serviceTime1)/totalCustomer1;
fprintf('\nAverage Service Time for Counter 1 = %2.6f\n', averageServiceTime1);

averageServiceTime2 = sum(serviceTime2)/totalCustomer2;
fprintf('\nAverage Service Time for Counter 2 = %2.6f\n', averageServiceTime2);

averageServiceTime2 = sum(serviceTimeEx)/totalCustomerEx;
fprintf('\nAverage Service Time for Counter 2 = %2.6f\n', averageServiceTime2);

averageWaitingTime = (sum(waitingTime1) + sum(waitingTime2) + sum(waitingTimeEx))/totalCustomer;
fprintf('\nAverage Waiting Time = %2.6f\n', averageWaitingTime);

averageTimeSpent = (sum(timeSpent1) + sum(timeSpent2) + sum(timeSpentEx))/totalCustomer;
fprintf('\nAverage Time Spent = %2.6f\n', averageTimeSpent);

probabilityToWait = (totalCustomerWait/totalCustomer)*100;
fprintf('\nProbability that a customer has to wait = %2.6f\n', probabilityToWait);

percentageC1Busy = (sum(serviceTime1)/total_SimulatedTime)*100;
fprintf('\nPercentage of time Counter 1 was busy = %2.6f\n', percentageC1Busy);

percentageC2Busy = (sum(serviceTime2)/total_SimulatedTime)*100;
fprintf('\nPercentage of time Counter 2 was busy = %2.6f\n', percentageC2Busy);

percentageC3Busy = (sum(serviceTimeEx)/total_SimulatedTime)*100;
fprintf('\nPercentage of time Counter 3 was busy = %2.6f\n', percentageC3Busy);