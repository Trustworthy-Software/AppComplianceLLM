.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaie;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzagx;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaix;
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakn;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzagx<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaix<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakn;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaie;


# instance fields
.field private zzb:[D

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;

    const/4 v1, 0x0

    new-array v2, v1, [D

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;-><init>([DIZ)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaie;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [D

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;-><init>([DIZ)V

    .line 50
    return-void
.end method

.method private constructor <init>([DIZ)V
    .locals 0

    .line 51
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzagx;-><init>(Z)V

    .line 52
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    .line 53
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    .line 54
    return-void
.end method

.method private final zzb(I)Ljava/lang/String;
    .locals 3

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", Size:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zzc(I)V
    .locals 1

    .line 79
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    if-ge p1, v0, :cond_0

    .line 81
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 5

    .line 55
    check-cast p2, Ljava/lang/Double;

    .line 56
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagx;->zza()V

    .line 58
    if-ltz p1, :cond_1

    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    if-gt p1, p2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    array-length v3, v2

    if-ge p2, v3, :cond_0

    .line 61
    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, p1

    invoke-static {v2, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 62
    :cond_0
    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 63
    new-array p2, p2, [D

    .line 64
    const/4 v3, 0x0

    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    .line 67
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    aput-wide v0, p2, p1

    .line 68
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    .line 69
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->modCount:I

    .line 70
    return-void

    .line 59
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 2

    .line 89
    check-cast p1, Ljava/lang/Double;

    .line 90
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zza(D)V

    .line 91
    nop

    .line 92
    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagx;->zza()V

    .line 94
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;

    if-nez v0, :cond_0

    .line 96
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagx;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 97
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;

    .line 98
    iget v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 99
    return v1

    .line 100
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    .line 101
    if-lt v3, v0, :cond_3

    .line 103
    add-int/2addr v2, v0

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    array-length v3, v0

    if-le v2, v3, :cond_2

    .line 105
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    .line 106
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    iget v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    .line 108
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->modCount:I

    .line 109
    return v0

    .line 102
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 112
    return v0

    .line 113
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;

    if-nez v1, :cond_1

    .line 114
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagx;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 115
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;

    .line 116
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    iget v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 117
    return v3

    .line 118
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    .line 119
    move v1, v3

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    if-ge v1, v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    .line 121
    return v3

    .line 122
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_4
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 3

    .line 22
    nop

    .line 23
    nop

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc(I)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    aget-wide v1, v0, p1

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 27
    return-object p1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    nop

    .line 2
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 4
    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zza(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 7

    .line 7
    instance-of v0, p1, Ljava/lang/Double;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->size()I

    move-result p1

    .line 11
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 12
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    aget-wide v5, v4, v0

    cmpl-double v4, v5, v2

    if-nez v4, :cond_1

    .line 13
    return v0

    .line 14
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_2
    return v1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 5

    .line 28
    nop

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagx;->zza()V

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc(I)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    aget-wide v1, v0, p1

    .line 32
    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_0

    .line 33
    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    .line 35
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->modCount:I

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 37
    return-object p1
.end method

.method protected final removeRange(II)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagx;->zza()V

    .line 83
    if-lt p2, p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    .line 87
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->modCount:I

    .line 88
    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 38
    check-cast p2, Ljava/lang/Double;

    .line 39
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagx;->zza()V

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc(I)V

    .line 42
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    aget-wide v2, p2, p1

    .line 43
    aput-wide v0, p2, p1

    .line 44
    nop

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 46
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    return v0
.end method

.method public final synthetic zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaix;
    .locals 3

    .line 17
    nop

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    if-lt p1, v0, :cond_0

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;-><init>([DIZ)V

    .line 21
    return-object v0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zza(D)V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagx;->zza()V

    .line 72
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 73
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 74
    new-array v2, v2, [D

    .line 75
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzb:[D

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaie;->zzc:I

    aput-wide p1, v0, v1

    .line 78
    return-void
.end method
