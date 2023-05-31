async function getSubjects() {
    try {
        const result = await fetch('https://swapi.dev/api/people/');
        const data = await result.json();
        return await data.results.filter(subject => Number(subject.height) > 100);
    } catch (error) {
        console.log('Error', error);
    }
}


console.log("hola");

