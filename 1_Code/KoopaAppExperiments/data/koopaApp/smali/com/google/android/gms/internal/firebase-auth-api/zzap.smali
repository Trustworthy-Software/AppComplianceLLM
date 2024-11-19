.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/zzap;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzak;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzak<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbf<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzar;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzap;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbf;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;-><init>()V

    return-void
.end method

.method public static zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TE;>;"
        }
    .end annotation

    .line 77
    filled-new-array/range {p0 .. p7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zzb([Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/util/Collection;)Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TE;>;"
        }
    .end annotation

    .line 70
    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzak;

    if-eqz v0, :cond_1

    .line 71
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzak;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 73
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object p0

    .line 74
    :cond_0
    return-object p0

    .line 75
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zzb([Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object p0

    return-object p0
.end method

.method static zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TE;>;"
        }
    .end annotation

    .line 55
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object p0

    return-object p0
.end method

.method private static varargs zzb([Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TE;>;"
        }
    .end annotation

    .line 61
    nop

    .line 62
    array-length v0, p0

    .line 63
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 64
    aget-object v2, p0, v1

    .line 65
    if-eqz v2, :cond_0

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "at index "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_1
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object p0

    .line 69
    return-object p0
.end method

.method static zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TE;>;"
        }
    .end annotation

    .line 56
    if-nez p1, :cond_0

    .line 57
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    .line 58
    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzax;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzao<",
            "TE;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzao;-><init>()V

    return-object v0
.end method

.method public static zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TE;>;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    return-object v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 107
    nop

    .line 108
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 109
    return v1

    .line 110
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 111
    check-cast p1, Ljava/util/List;

    .line 112
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 114
    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_2

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_2

    .line 115
    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 116
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_1
    return v1

    .line 119
    :cond_2
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v2

    .line 120
    :goto_1
    if-ge v3, v0, :cond_3

    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 123
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 124
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 125
    goto :goto_1

    .line 126
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    nop

    .line 127
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 6
    nop

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->size()I

    move-result v0

    .line 8
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 10
    not-int v1, v1

    not-int v1, v1

    .line 11
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 13
    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 14
    :cond_0
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_6

    .line 15
    nop

    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 17
    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 18
    nop

    :goto_0
    if-ge v2, v1, :cond_2

    .line 19
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 20
    return v2

    .line 21
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    .line 22
    :cond_3
    nop

    :goto_1
    if-ge v2, v1, :cond_5

    .line 23
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 24
    return v2

    .line 25
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26
    :cond_5
    :goto_2
    nop

    .line 27
    return v0

    .line 28
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 29
    :cond_7
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 30
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 31
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result p1

    return p1

    .line 32
    :cond_8
    nop

    .line 33
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzak;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzbc;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 34
    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 35
    :cond_0
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_6

    .line 36
    nop

    .line 37
    if-nez p1, :cond_3

    .line 38
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 39
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 40
    return p1

    .line 41
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    .line 42
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    .line 43
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 44
    return v1

    .line 45
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 46
    :cond_5
    :goto_2
    nop

    .line 47
    return v0

    .line 48
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 49
    :cond_7
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 50
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 51
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result p1

    return p1

    .line 52
    :cond_8
    nop

    .line 53
    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 93
    nop

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbf;

    .line 95
    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 96
    nop

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zzb(II)I

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbf;

    return-object p1

    .line 100
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzar;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzar;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzap;I)V

    .line 101
    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object p1

    return-object p1
.end method

.method zza([Ljava/lang/Object;I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->size()I

    move-result v0

    .line 2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    add-int v2, p2, v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    .line 4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public zza(II)Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TE;>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zza(III)V

    .line 79
    sub-int/2addr p2, p1

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 81
    return-object p0

    .line 82
    :cond_0
    if-nez p2, :cond_1

    .line 83
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzax;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    .line 84
    return-object p1

    .line 85
    :cond_1
    nop

    .line 86
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzap;II)V

    .line 87
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzbc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbc<",
            "TE;>;"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbf;

    return-object v0
.end method
