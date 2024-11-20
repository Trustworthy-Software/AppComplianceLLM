.class public abstract Lcom/google/android/gms/internal/measurement/zzhf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzhd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzhf<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzkm;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 29
    nop

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " threw an IOException (should never happen)."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    return-object p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhf;->zzy()Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza(Lcom/google/android/gms/internal/measurement/zzib;Lcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzib;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public zza([BII)Lcom/google/android/gms/internal/measurement/zzhf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzji;
        }
    .end annotation

    .line 1
    nop

    .line 2
    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, p2, p3, p2}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BIIZ)Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object p1

    .line 3
    nop

    .line 4
    nop

    .line 5
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzik;->zza:Lcom/google/android/gms/internal/measurement/zzik;

    .line 6
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(Lcom/google/android/gms/internal/measurement/zzib;Lcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzkm;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzib;->zzb(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzji; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzhf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 9
    :catch_1
    move-exception p1

    throw p1
.end method

.method public zza([BIILcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzhf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzji;
        }
    .end annotation

    .line 12
    nop

    .line 13
    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, p2, p3, p2}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BIIZ)Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object p1

    .line 14
    nop

    .line 15
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(Lcom/google/android/gms/internal/measurement/zzib;Lcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzkm;

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzib;->zzb(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzji; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzhf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 18
    :catch_1
    move-exception p1

    throw p1
.end method

.method public final synthetic zza([B)Lcom/google/android/gms/internal/measurement/zzkm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzji;
        }
    .end annotation

    .line 21
    nop

    .line 22
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzhf;->zza([BII)Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final synthetic zza([BLcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzkm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzji;
        }
    .end annotation

    .line 25
    nop

    .line 26
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzhf;->zza([BIILcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object p1

    .line 27
    return-object p1
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/measurement/zzib;Lcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzkm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhf;->zza(Lcom/google/android/gms/internal/measurement/zzib;Lcom/google/android/gms/internal/measurement/zzik;)Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object p1

    return-object p1
.end method

.method public abstract zzy()Lcom/google/android/gms/internal/measurement/zzhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method
