function output = resultEva(count_cus, counter, waitingTime1, waitingTime2, waitingTimeEx, serviceEnd1, serviceEnd2, serviceEndEx, interArrivalTime, arrivalTime, serviceTime1, serviceTime2, serviceTimeEx, timeSpend1, timeSpend2, timeSpendEx)

    
printf('\n-------------------DATA EVALUATION-------------------\n');

totalCustomer = 0;
totalCustomer1 = 0;
totalCustomer2 = 0;
totalCustomerEx = 0;

for loop = 1:count_cus
    totalCustomer = totalCustomer + 1;

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
    if waitingTime2(loop) ~= 0
        totalCustomerWait2 = totalCustomerWait2 + 1;
    end
end

totalCustomerWaitEx = 0;
for loop = 1:length(waitingTimeEx)
    if waitingTimeEx(loop) ~= 0
        totalCustomerWaitEx = totalCustomerWaitEx + 1;
    end
end

totalCustomerWait = totalCustomerWait1 + totalCustomerWait2 + totalCustomerWaitEx;

total_SimulatedTime1 = serviceEnd1(length(serviceEnd1));
total_SimulatedTime2 = serviceEnd2(length(serviceEnd2));
total_SimulatedTimeEx = serviceEndEx(length(serviceEndEx));

if total_SimulatedTime1 >= total_SimulatedTime2 && total_SimulatedTime1 >= total_SimulatedTimeEx
    total_SimulatedTime = total_SimulatedTime1;
elseif total_SimulatedTime2 >= total_SimulatedTimeEx
    total_SimulatedTime = total_SimulatedTime2;
else
    total_SimulatedTime = total_SimulatedTimeEx;
end


fprintf('\nTotal Customer = %2.0f\n', totalCustomer);

averageInterArrivalTime = sum(interArrivalTime)/totalCustomer;
fprintf('\nAverage Inter-arrival Time = %2.6f\n', averageInterArrivalTime);

averageArrivalTime = sum(arrivalTime)/totalCustomer;
fprintf('\nAverage Arrival Time = %2.6f\n', averageArrivalTime);

averageServiceTime1 = sum(serviceTime1)/totalCustomer1;
fprintf('\nAverage Service Time for Counter 1 = %2.6f\n', averageServiceTime1);

averageServiceTime2 = sum(serviceTime2)/totalCustomer2;
fprintf('\nAverage Service Time for Counter 2 = %2.6f\n', averageServiceTime2);

averageServiceTimeEx = sum(serviceTimeEx)/totalCustomerEx;
fprintf('\nAverage Service Time for Counter 3 = %2.6f\n', averageServiceTimeEx);

totalWaitingTime = (sum(waitingTime1) + sum(waitingTime2) + sum(waitingTimeEx));
fprintf('\nTotal Waiting Time = %2.6f\n', totalWaitingTime);

averageWaitingTime = (sum(waitingTime1) + sum(waitingTime2) + sum(waitingTimeEx))/totalCustomer;
fprintf('\nAverage Waiting Time = %2.6f\n', averageWaitingTime);

averageTimeSpent = (sum(timeSpend1) + sum(timeSpend2) + sum(timeSpendEx))/totalCustomer;
fprintf('\nAverage Time Spent = %2.6f\n', averageTimeSpent);

probabilityToWait = (totalCustomerWait/totalCustomer)*100;
fprintf('\nProbability that a customer has to wait = %2.6f\n', probabilityToWait);

fprintf('\nTotal simulated time = %2.6f\n', total_SimulatedTime);

percentageC1Busy = (sum(serviceTime1)/total_SimulatedTime)*100;
fprintf('\nPercentage of time Counter 1 was busy = %2.6f\n', percentageC1Busy);

percentageC2Busy = (sum(serviceTime2)/total_SimulatedTime)*100;
fprintf('\nPercentage of time Counter 2 was busy = %2.6f\n', percentageC2Busy);

percentageC3Busy = (sum(serviceTimeEx)/total_SimulatedTime)*100;
fprintf('\nPercentage of time Counter 3 was busy = %2.6f\n', percentageC3Busy);
