<template>
<div class="home">
    <h1>Welcome to Phone Accessories Shop</h1>
    <p>Best accessories at best price 🔥</p>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta, itaque ipsam? Recusandae possimus, asperiores, laboriosam doloremque voluptate similique, dolorem quasi quidem libero quos placeat illum distinctio iste fugiat. Modi aspernatur consectetur explicabo. Tenetur dignissimos ab nostrum porro totam praesentium ullam aliquid, inventore accusantium distinctio rerum magni rem eius, eos eaque optio saepe nihil officiis. Eveniet iusto, ut odit quis necessitatibus saepe a! Eligendi ea voluptates inventore non expedita qui molestiae illo ullam officia omnis, iure repudiandae neque adipisci vitae voluptas, nobis temporibus ipsum nemo quaerat iusto ducimus voluptate in sed? Beatae perferendis laboriosam earum cupiditate aspernatur autem voluptates quam vitae?</p>

    <section class="item-list">
        <div class="card item-card" style="width: 18rem;">
            <img src="https://picsum.photos/400?1" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card’s content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>

        <div class="card item-card" style="width: 18rem;">
            <img src="https://picsum.photos/400?1" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card’s content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
    </section>

</div>
</template>

<style scoped>
.home {
    padding: 40px;
    text-align: center;
}

.item-list {
    display: flex;
    gap: 20px;
    justify-content: center;
    margin-top: 30px;

} 

.item-card {
    border: 1px solid #ffffff;
    border-radius: 0px;
    overflow: hidden;
    
}

img {
    display: inline-block;
    height: auto;
    max-width: 100%;
    vertical-align: middle;

    overflow-clip-margin: content-box;
    overflow: clip;
    aspect-ratio: auto 247 / 329;
    width: 247px;
    height: 329;
}
</style>
