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
