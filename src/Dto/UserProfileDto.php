<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\UserProfiles\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Bez logiky; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class UserProfileDto {
    public function __construct(
        public readonly ?int $userId,
        public readonly ?string $profileEnc,
        public readonly ?string $keyVersion,
        public readonly array|null $encryptionMeta,
        public readonly \DateTimeImmutable $updatedAt,
        public readonly int $version
    ) {}

    /** Vhodné pro serializaci/logování (bez velkých blobů). */
    public function toArray(): array {
        return get_object_vars($this);
    }
}
