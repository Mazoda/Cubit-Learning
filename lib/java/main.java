abstract class Strategy {
    abstract void sort(Int[] numbers);

}

class InsertionSort extends Strategy {

    @Override
    void sort(Int[] numbers) {
        System.out.println("Insertion Sort");

    }

}

class QuickSort extends Strategy {

    @Override
    void sort(Int[] numbers) {
        System.out.println("Merge Sort");

    }

}

class MergeSort extends Strategy {

    @Override
    void sort(Int[] numbers) {
        System.out.println("Merge Sort");

    }

}

class StrategySort {
    Strategy strategy;

    StrategySort(Strategy strategy) {
        this.strategy = strategy;
    }
   public void sortk(Int[] numbers){
strategy.sort(numbers);
}

}

class test {

    public static void main(String[] args) {

        StrategySort s = StrategySort(new MergeSort());
       s.sortk(numbers);
    }
}