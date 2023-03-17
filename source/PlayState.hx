class Chunk {
    var position: Vector3; // posição do chunk no mundo
    var size: Vector3; // tamanho do chunk
    var mesh: Mesh; // mesh do chunk

    public function new(position: Vector3, size: Vector3) {
        this.position = position;
        this.size = size;
    }

    public function generateMesh(): Void {
        // lógica para gerar a mesh do chunk
        // pode incluir criação de vértices, normais e índices
    }
}

class ChunkManager {
    var chunks: Array<Chunk>; // array que armazena todos os chunks gerados

    public function new() {
        chunks = new Array<Chunk>();
    }

    public function generateChunk(position: Vector3, size: Vector3): Chunk {
        var chunk = new Chunk(position, size);
        chunk.generateMesh();
        chunks.push(chunk);
        return chunk;
    }

    public function removeChunk(chunk: Chunk): Void {
        var index = chunks.indexOf(chunk);
        if (index > -1) {
            chunks.splice(index, 1);
        }
    }

    public function updateChunks(playerPosition: Vector3, maxDistance: Float): Void {
        for (chunk in chunks) {
            var distance = playerPosition.distance(chunk.position);
            if (distance > maxDistance) {
                removeChunk(chunk);
            }
        }
    }
}

class Main {
    static function main() {
        var chunkManager = new ChunkManager();

        // exemplo de geração de um chunk na posição (0, 0, 0) com tamanho (10, 10, 10)
        var chunk = chunkManager.generateChunk(new Vector3(0, 0, 0), new Vector3(10, 10, 10));

        // exemplo de atualização dos chunks com base na posição do jogador e distância máxima de renderização
        var playerPosition = new Vector3(5, 0, 5);
        var maxDistance = 50.0;
        chunkManager.updateChunks(playerPosition, maxDistance);
    }
}
