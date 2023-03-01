<?php 
    function dd($var){
        // Debuggin in frontend
        echo "<pre>";
        var_dump($var);
        echo "</pre>";
    }

    function save_query_to_array($result){
        // Save the result of the mysqli query to an array. Cicles between all the rows of the result.
        $array = [];
        do{
            array_push($array,mysqli_fetch_assoc($result));
        }while(end($array));
        array_pop($array);

        return $array;
    }

    function convert_datetime_to_M_Y($datetime){
        return date('M-Y', strtotime($datetime));
    }

    function not_empty($var){
        if (isset($var)){
            if(!empty($var)){
                return true;
            }
        }
        return false;

    }

    function sort_results_by_key($array, $key_to_use, $sort_arrangement){
        $priority = array_column($array, $key_to_use);
        array_multisort($priority, $sort_arrangement, $array);
        return $array;
    }