interface Echo {
    echo(
        success:(param:string)=>void,
        error:(error:string)=>void,
        param1:string,
        param2:string
    ):void;
}

declare var echo: Echo;