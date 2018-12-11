import { Universe } from '@alexghr/game-of-life-wasm';

const pre = document.getElementById('universe');
const u = Universe.new();

function render() {
    pre.textContent = u.render();
    u.tick();

    requestAnimationFrame(render);
}

requestAnimationFrame(render);
