.class final Lcom/google/android/gms/internal/firebase-auth-api/zzajp;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakw;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakc;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzakc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakc;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 50
    nop

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/firebase-auth-api/zzakc;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzais;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzais;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzajp;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakc;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;-><init>([Lcom/google/android/gms/internal/firebase-auth-api/zzakc;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajp;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakc;)V

    .line 54
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakc;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakc;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzakc;

    .line 57
    return-void
.end method

.method private static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakc;
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    move-exception v0

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakc;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajz;)Z
    .locals 1

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajr;->zza:[I

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzakq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakq;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 60
    const/4 p0, 0x1

    return p0

    .line 59
    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakt<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zza(Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzakc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakc;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzajz;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaik;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaii;

    move-result-object v0

    .line 11
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzals;Lcom/google/android/gms/internal/firebase-auth-api/zzaii;Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzakh;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaik;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaii;

    move-result-object v0

    .line 15
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v1

    .line 16
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzals;Lcom/google/android/gms/internal/firebase-auth-api/zzaii;Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzakh;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1
    nop

    .line 18
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajz;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    nop

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakl;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzakj;

    move-result-object v3

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzajk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzajk;

    move-result-object v4

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    move-result-object v5

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaik;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaii;

    move-result-object v6

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzajy;

    move-result-object v7

    .line 26
    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzakf;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzajz;Lcom/google/android/gms/internal/firebase-auth-api/zzakj;Lcom/google/android/gms/internal/firebase-auth-api/zzajk;Lcom/google/android/gms/internal/firebase-auth-api/zzals;Lcom/google/android/gms/internal/firebase-auth-api/zzaii;Lcom/google/android/gms/internal/firebase-auth-api/zzajy;)Lcom/google/android/gms/internal/firebase-auth-api/zzakf;

    move-result-object p1

    return-object p1

    .line 27
    :cond_2
    nop

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakl;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzakj;

    move-result-object v3

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzajk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzajk;

    move-result-object v4

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    move-result-object v5

    const/4 v6, 0x0

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzajy;

    move-result-object v7

    .line 32
    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzakf;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzajz;Lcom/google/android/gms/internal/firebase-auth-api/zzakj;Lcom/google/android/gms/internal/firebase-auth-api/zzajk;Lcom/google/android/gms/internal/firebase-auth-api/zzals;Lcom/google/android/gms/internal/firebase-auth-api/zzaii;Lcom/google/android/gms/internal/firebase-auth-api/zzajy;)Lcom/google/android/gms/internal/firebase-auth-api/zzakf;

    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajz;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    nop

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakl;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakj;

    move-result-object v3

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzajk;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzajk;

    move-result-object v4

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    move-result-object v5

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaik;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaii;

    move-result-object v6

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzajy;

    move-result-object v7

    .line 41
    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzakf;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzajz;Lcom/google/android/gms/internal/firebase-auth-api/zzakj;Lcom/google/android/gms/internal/firebase-auth-api/zzajk;Lcom/google/android/gms/internal/firebase-auth-api/zzals;Lcom/google/android/gms/internal/firebase-auth-api/zzaii;Lcom/google/android/gms/internal/firebase-auth-api/zzajy;)Lcom/google/android/gms/internal/firebase-auth-api/zzakf;

    move-result-object p1

    return-object p1

    .line 42
    :cond_4
    nop

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakl;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakj;

    move-result-object v3

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzajk;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzajk;

    move-result-object v4

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    move-result-object v5

    const/4 v6, 0x0

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaka;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzajy;

    move-result-object v7

    .line 47
    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzakf;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzajz;Lcom/google/android/gms/internal/firebase-auth-api/zzakj;Lcom/google/android/gms/internal/firebase-auth-api/zzajk;Lcom/google/android/gms/internal/firebase-auth-api/zzals;Lcom/google/android/gms/internal/firebase-auth-api/zzaii;Lcom/google/android/gms/internal/firebase-auth-api/zzajy;)Lcom/google/android/gms/internal/firebase-auth-api/zzakf;

    move-result-object p1

    .line 48
    return-object p1
.end method
