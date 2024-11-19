.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaht;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzahs;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zze:Ljava/io/InputStream;

.field private final zzf:[B

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:Lcom/google/android/gms/internal/firebase-auth-api/zzahw;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 189
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzahy;)V

    .line 190
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzl:I

    .line 191
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzm:Lcom/google/android/gms/internal/firebase-auth-api/zzahw;

    .line 192
    const-string p2, "input"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zze:Ljava/io/InputStream;

    .line 194
    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    .line 195
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    .line 196
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 197
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/firebase-auth-api/zzahv;)V
    .locals 0

    const/16 p2, 0x1000

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private static zza(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzj()V

    .line 9
    throw p0
.end method

.method private static zza(Ljava/io/InputStream;[BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzj()V

    .line 23
    throw p0
.end method

.method private static zza(Ljava/io/InputStream;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 115
    :catch_0
    move-exception p0

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzj()V

    .line 117
    throw p0
.end method

.method private final zza(IZ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzj(I)[B

    move-result-object p2

    .line 317
    if-eqz p2, :cond_0

    .line 318
    return-object p2

    .line 319
    :cond_0
    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 320
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    sub-int v1, v0, p2

    .line 321
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 323
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    .line 324
    sub-int v2, p1, v1

    .line 325
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf(I)Ljava/util/List;

    move-result-object v2

    .line 326
    new-array p1, p1, [B

    .line 327
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    nop

    .line 329
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 330
    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    array-length v2, v2

    add-int/2addr v1, v2

    .line 332
    goto :goto_0

    .line 333
    :cond_1
    return-object p1
.end method

.method private final zzaa()V
    .locals 3

    .line 205
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzh:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    .line 206
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    add-int/2addr v1, v0

    .line 207
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzl:I

    if-le v1, v2, :cond_0

    .line 208
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzh:I

    .line 209
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzh:I

    .line 211
    return-void
.end method

.method private final zzf(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    :goto_0
    if-lez p1, :cond_2

    .line 176
    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    .line 177
    const/4 v3, 0x0

    .line 178
    :goto_1
    if-ge v3, v1, :cond_1

    .line 179
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zze:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 180
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 182
    iget v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    .line 183
    add-int/2addr v3, v4

    .line 184
    goto :goto_1

    .line 181
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 185
    :cond_1
    sub-int/2addr p1, v1

    .line 186
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    goto :goto_0

    .line 188
    :cond_2
    return-object v0
.end method

.method private final zzg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 214
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 215
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 216
    :cond_1
    return-void
.end method

.method private final zzh(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_0

    if-ltz p1, :cond_0

    .line 218
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    return-void

    .line 219
    :cond_0
    nop

    .line 220
    if-ltz p1, :cond_6

    .line 222
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    add-int v3, v2, v1

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzl:I

    if-gt v3, v4, :cond_5

    .line 225
    nop

    .line 226
    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    .line 227
    sub-int/2addr v0, v1

    .line 228
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    .line 229
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 230
    :goto_0
    if-ge v0, p1, :cond_2

    .line 231
    sub-int v1, p1, v0

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zze:Ljava/io/InputStream;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zza(Ljava/io/InputStream;J)J

    move-result-wide v1

    .line 233
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_1

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 236
    if-eqz v5, :cond_2

    .line 237
    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 238
    goto :goto_0

    .line 234
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zze:Ljava/io/InputStream;

    .line 235
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#skip returned invalid result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :catchall_0
    move-exception p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    .line 243
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzaa()V

    .line 244
    throw p1

    .line 239
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    .line 240
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzaa()V

    .line 241
    nop

    .line 245
    if-ge v0, p1, :cond_4

    .line 246
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    sub-int v1, v0, v1

    .line 247
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 248
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg(I)V

    .line 249
    :goto_1
    sub-int v2, p1, v1

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    if-le v2, v3, :cond_3

    .line 250
    add-int/2addr v1, v3

    .line 251
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 252
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg(I)V

    goto :goto_1

    .line 253
    :cond_3
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 254
    :cond_4
    return-void

    .line 223
    :cond_5
    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzh(I)V

    .line 224
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 221
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1
.end method

.method private final zzi(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    nop

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    if-le v0, v1, :cond_7

    .line 294
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-le p1, v0, :cond_1

    .line 295
    return v3

    .line 296
    :cond_1
    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzl:I

    if-le v1, v0, :cond_2

    .line 297
    return v3

    .line 298
    :cond_2
    nop

    .line 299
    if-lez v2, :cond_4

    .line 300
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    if-le v0, v2, :cond_3

    .line 301
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    .line 303
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    .line 304
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zze:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    array-length v4, v1

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzc:I

    iget v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    sub-int/2addr v5, v6

    .line 306
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 307
    invoke-static {v0, v1, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zza(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 308
    if-eqz v0, :cond_6

    const/4 v1, -0x1

    if-lt v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_6

    .line 311
    if-lez v0, :cond_5

    .line 312
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    .line 313
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzaa()V

    .line 314
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 315
    :cond_5
    return v3

    .line 309
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zze:Ljava/io/InputStream;

    .line 310
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refillBuffer() called when "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes were already available in buffer"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzj(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    if-nez p1, :cond_0

    .line 335
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zzb:[B

    return-object p1

    .line 336
    :cond_0
    if-ltz p1, :cond_7

    .line 338
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 339
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzc:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6

    .line 341
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzl:I

    if-gt v0, v1, :cond_5

    .line 344
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    sub-int/2addr v0, v1

    .line 345
    sub-int v1, p1, v0

    .line 346
    const/16 v2, 0x1000

    if-lt v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zze:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zza(Ljava/io/InputStream;)I

    move-result v2

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 361
    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 347
    :cond_2
    :goto_0
    new-array v1, p1, [B

    .line 348
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    .line 350
    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 351
    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    .line 352
    nop

    .line 353
    :goto_1
    if-ge v0, p1, :cond_4

    .line 354
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zze:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-static {v2, v1, v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zza(Ljava/io/InputStream;[BII)I

    move-result v2

    .line 355
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 357
    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    .line 358
    add-int/2addr v0, v2

    .line 359
    goto :goto_1

    .line 356
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 360
    :cond_4
    return-object v1

    .line 342
    :cond_5
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    sub-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzh(I)V

    .line 343
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 340
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 337
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1
.end method

.method private final zzv()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    if-ne v0, v1, :cond_0

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private final zzw()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 29
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg(I)V

    .line 30
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    .line 32
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 33
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private final zzx()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 35
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    if-eq v1, v0, :cond_6

    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    .line 37
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 38
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 39
    return v0

    .line 40
    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    .line 41
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    .line 42
    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    .line 43
    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    .line 44
    xor-int/lit16 v0, v0, 0x3f80

    move v1, v3

    goto :goto_0

    .line 45
    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    .line 46
    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    .line 47
    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    .line 48
    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    .line 49
    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    .line 50
    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    goto :goto_0

    :cond_4
    move v1, v3

    .line 51
    :cond_5
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 52
    return v0

    .line 53
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzm()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private final zzy()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 69
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 70
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg(I)V

    .line 71
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    .line 73
    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 74
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzz()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 76
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    if-eq v1, v0, :cond_9

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    .line 78
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 79
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 80
    int-to-long v0, v0

    return-wide v0

    .line 81
    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    .line 82
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    .line 83
    xor-int/lit8 v0, v0, -0x80

    int-to-long v2, v0

    goto/16 :goto_0

    .line 84
    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    .line 85
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_0

    .line 86
    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    .line 87
    const v2, -0x1fc080

    xor-int/2addr v0, v2

    int-to-long v2, v0

    goto/16 :goto_0

    .line 88
    :cond_3
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    .line 89
    const-wide/32 v1, 0xfe03f80

    xor-long v2, v3, v1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    .line 91
    const-wide v5, -0x7f01fc080L

    xor-long v2, v3, v5

    goto :goto_0

    .line 92
    :cond_5
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    .line 93
    const-wide v1, 0x3f80fe03f80L

    xor-long v2, v3, v1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_6
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    .line 95
    const-wide v5, -0x1fc07f01fc080L

    xor-long v2, v3, v5

    goto :goto_0

    .line 96
    :cond_7
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    .line 97
    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    .line 98
    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    .line 99
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    move-wide v2, v3

    goto :goto_0

    .line 98
    :cond_8
    move v1, v0

    move-wide v2, v3

    .line 100
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 101
    return-wide v2

    .line 102
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzm()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final zza()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzy()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zza(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 11
    if-ltz p1, :cond_1

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzl:I

    .line 15
    if-gt p1, v0, :cond_0

    .line 17
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzl:I

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzaa()V

    .line 19
    return v0

    .line 16
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 12
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1
.end method

.method public final zzb()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzw()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final zzb(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 199
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzj:I

    if-ne v0, p1, :cond_0

    .line 201
    return-void

    .line 200
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1
.end method

.method public final zzc()I
    .locals 2

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzc(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzl:I

    .line 203
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzaa()V

    .line 204
    return-void
.end method

.method public final zzd()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzx()I

    move-result v0

    return v0
.end method

.method public final zzd(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    nop

    .line 258
    and-int/lit8 v0, p1, 0x7

    .line 259
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 291
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaiz;

    move-result-object p1

    throw p1

    .line 289
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzh(I)V

    .line 290
    return v3

    .line 288
    :pswitch_1
    return v2

    .line 278
    :pswitch_2
    nop

    .line 279
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzi()I

    move-result v0

    .line 280
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzd(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    goto :goto_0

    .line 281
    :cond_1
    :goto_1
    nop

    .line 283
    nop

    .line 284
    ushr-int/lit8 p1, p1, 0x3

    .line 285
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v1

    .line 286
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzb(I)V

    .line 287
    return v3

    .line 276
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzx()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzh(I)V

    .line 277
    return v3

    .line 274
    :pswitch_4
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzh(I)V

    .line 275
    return v3

    .line 260
    :pswitch_5
    nop

    .line 261
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_4

    .line 262
    nop

    .line 263
    nop

    :goto_2
    if-ge v2, v0, :cond_3

    .line 264
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    aget-byte p1, p1, v1

    if-gez p1, :cond_2

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 267
    :cond_2
    goto :goto_4

    .line 266
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 268
    :cond_4
    nop

    .line 269
    nop

    :goto_3
    if-ge v2, v0, :cond_6

    .line 270
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzv()B

    move-result p1

    if-gez p1, :cond_5

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 273
    :cond_5
    :goto_4
    return v3

    .line 272
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzw()I

    move-result v0

    return v0
.end method

.method public final zzf()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzx()I

    move-result v0

    return v0
.end method

.method public final zzg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzw()I

    move-result v0

    return v0
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzx()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zze(I)I

    move-result v0

    return v0
.end method

.method public final zzi()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzj:I

    .line 58
    return v0

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzj:I

    .line 60
    nop

    .line 61
    ushr-int/lit8 v1, v0, 0x3

    .line 62
    if-eqz v1, :cond_1

    .line 64
    return v0

    .line 63
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzx()I

    move-result v0

    return v0
.end method

.method public final zzk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzz()J

    move-result-wide v0

    return-wide v0
.end method

.method final zzm()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    nop

    .line 104
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzv()B

    move-result v3

    .line 106
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 107
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 108
    return-wide v0

    .line 109
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0
.end method

.method public final zzn()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzz()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zza(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzz()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzx()I

    move-result v0

    .line 119
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v1

    .line 121
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 122
    return-object v1

    .line 123
    :cond_0
    if-nez v0, :cond_1

    .line 124
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    return-object v0

    .line 125
    :cond_1
    nop

    .line 126
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzj(I)[B

    move-result-object v1

    .line 127
    if-eqz v1, :cond_2

    .line 128
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    return-object v0

    .line 129
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 130
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    sub-int v3, v2, v1

    .line 131
    iget v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzk:I

    .line 132
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 133
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    .line 134
    sub-int v4, v0, v3

    .line 135
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf(I)Ljava/util/List;

    move-result-object v4

    .line 136
    new-array v0, v0, [B

    .line 137
    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    nop

    .line 139
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 140
    array-length v5, v4

    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    array-length v4, v4

    add-int/2addr v3, v4

    .line 142
    goto :goto_0

    .line 143
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzx()I

    move-result v0

    .line 146
    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 148
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 149
    return-object v1

    .line 150
    :cond_0
    if-nez v0, :cond_1

    .line 151
    const-string v0, ""

    return-object v0

    .line 152
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    if-gt v0, v1, :cond_2

    .line 153
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg(I)V

    .line 154
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 155
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 156
    return-object v1

    .line 157
    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zza(IZ)[B

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final zzs()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzx()I

    move-result v0

    .line 159
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 160
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_0

    if-lez v0, :cond_0

    .line 161
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    .line 162
    add-int v3, v1, v0

    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    .line 163
    goto :goto_0

    .line 164
    :cond_0
    if-nez v0, :cond_1

    .line 165
    const-string v0, ""

    return-object v0

    .line 166
    :cond_1
    const/4 v1, 0x0

    if-gt v0, v2, :cond_2

    .line 167
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg(I)V

    .line 168
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzf:[B

    .line 169
    nop

    .line 170
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    goto :goto_0

    .line 171
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zza(IZ)[B

    move-result-object v2

    .line 172
    nop

    .line 173
    :goto_0
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamc;->zzb([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzt()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzg:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzi(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzu()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;->zzz()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
