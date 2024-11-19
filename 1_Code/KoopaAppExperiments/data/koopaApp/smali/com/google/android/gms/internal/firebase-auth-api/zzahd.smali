.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzahk;

.field private static final zzc:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzahp;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzahk;

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzc:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzd:I

    .line 45
    return-void
.end method

.method static synthetic zza(B)I
    .locals 0

    .line 1
    nop

    .line 2
    and-int/lit16 p0, p0, 0xff

    .line 3
    return p0
.end method

.method static zza(III)I
    .locals 3

    .line 4
    sub-int v0, p1, p0

    .line 5
    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    .line 6
    if-ltz p0, :cond_1

    .line 8
    if-ge p1, p0, :cond_0

    .line 9
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index larger than ending index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " >= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Beginning index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " < 0"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    return v0
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;-><init>([B)V

    return-object v0
.end method

.method public static zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 2

    .line 22
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p0

    return-object p0
.end method

.method public static zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 2

    .line 23
    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza(III)I

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzahk;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahk;->zza([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;-><init>([B)V

    return-object v0
.end method

.method static zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;-><init>([B)V

    return-object v0
.end method

.method static zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzahm;
    .locals 2

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;-><init>(ILcom/google/android/gms/internal/firebase-auth-api/zzahl;)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzd:I

    .line 13
    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v0

    .line 15
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb(III)I

    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzd:I

    .line 19
    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 37
    nop

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    .line 39
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 27
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 30
    nop

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalo;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 33
    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza(I)B
.end method

.method protected final zza()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzd:I

    return v0
.end method

.method public abstract zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
.end method

.method protected abstract zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahe;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract zza([BIII)V
.end method

.method abstract zzb(I)B
.end method

.method public abstract zzb()I
.end method

.method protected abstract zzb(III)I
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahs;
.end method

.method public final zzd()Ljava/lang/String;
    .locals 2

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zza:Ljava/nio/charset/Charset;

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 36
    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract zzf()Z
.end method

.method public final zzg()[B
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zzb:[B

    return-object v0

    .line 50
    :cond_0
    new-array v1, v0, [B

    .line 51
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([BIII)V

    .line 52
    return-object v1
.end method
