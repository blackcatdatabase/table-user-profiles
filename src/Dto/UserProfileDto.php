<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\UserProfiles\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Žádná logika; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class UserProfileDto {
    public function __construct(
        public readonly ?int $userId,
        public readonly ?string $profileEnc,
        public readonly ?string $keyVersion,
        public readonly array|null $encryptionMeta,
        public readonly \DateTimeImmutable $updatedAt
    ) {}

    /** Vhodné pro serializaci/logování (bez binárních/velkých blobů). */
    public function toArray(): array {
        // get_object_vars funguje dobře s public readonly vlastnostmi
        return get_object_vars($this);
    }
}
