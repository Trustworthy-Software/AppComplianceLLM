.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcj;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation
.end field

.field private zzb:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzck;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;>;>;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;>;"
        }
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcl<",
            "TP;>;"
        }
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TP;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzb:Ljava/util/concurrent/ConcurrentMap;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzc:Ljava/util/List;

    .line 72
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zza:Ljava/lang/Class;

    .line 73
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzrn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzci;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;Z)Lcom/google/android/gms/internal/firebase-auth-api/zzcj;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;TP;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;",
            "Z)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcj<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 3
    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzb:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_7

    .line 5
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "at least one of the `fullPrimitive` or `primitive` must be set"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    if-ne v1, v2, :cond_6

    .line 9
    nop

    .line 10
    nop

    .line 11
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    const/4 v11, 0x0

    if-ne v2, v3, :cond_2

    .line 13
    move-object v1, v11

    .line 14
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznu;

    move-result-object v2

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzf()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v4

    .line 17
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    move-result-object v5

    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v6

    .line 19
    invoke-static {v3, v4, v5, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    move-result-object v1

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    move-result-object v3

    .line 21
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object v10

    .line 22
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    .line 23
    nop

    .line 24
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zza:[I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x5

    packed-switch v2, :pswitch_data_0

    .line 36
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "unknown output prefix type"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbn;->zza:[B

    move-object v5, v2

    goto :goto_1

    .line 30
    :pswitch_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 31
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 32
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 34
    move-object v5, v2

    goto :goto_1

    .line 25
    :pswitch_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 26
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 27
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 29
    move-object v5, v2

    .line 37
    :goto_1
    nop

    .line 38
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    move-result-object v6

    .line 39
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v7

    .line 40
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza()I

    move-result v8

    .line 41
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzf()Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;-><init>(Ljava/lang/Object;Ljava/lang/Object;[BLcom/google/android/gms/internal/firebase-auth-api/zzuz;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;ILjava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzbt;)V

    .line 42
    nop

    .line 43
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzb:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzc:Ljava/util/List;

    .line 44
    nop

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/zzck;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zzh()[B

    move-result-object v6

    invoke-direct {v5, v6, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzck;-><init>([BLcom/google/android/gms/internal/firebase-auth-api/zzcn;)V

    .line 48
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 49
    if-eqz v4, :cond_3

    .line 50
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    if-eqz p4, :cond_5

    .line 56
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    if-nez v2, :cond_4

    .line 58
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    goto :goto_2

    .line 57
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you cannot set two primary primitives"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_5
    :goto_2
    return-object v0

    .line 8
    :cond_6
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "only ENABLED key is allowed"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "addPrimitive cannot be called after build"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcg;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcg<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzb:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzb:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzc:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzcl;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zza:Ljava/lang/Class;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;-><init>(Ljava/util/concurrent/ConcurrentMap;Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzcl;Lcom/google/android/gms/internal/firebase-auth-api/zzrn;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzcm;)V

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzb:Ljava/util/concurrent/ConcurrentMap;

    .line 68
    return-object v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build cannot be called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzrn;)Lcom/google/android/gms/internal/firebase-auth-api/zzcj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzrn;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcj<",
            "TP;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zzb:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    .line 62
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    .line 63
    return-object p0

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setAnnotations cannot be called after build"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcj;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;TP;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcj<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;Z)Lcom/google/android/gms/internal/firebase-auth-api/zzcj;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzcj;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;TP;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcj<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;Z)Lcom/google/android/gms/internal/firebase-auth-api/zzcj;

    move-result-object p1

    return-object p1
.end method
