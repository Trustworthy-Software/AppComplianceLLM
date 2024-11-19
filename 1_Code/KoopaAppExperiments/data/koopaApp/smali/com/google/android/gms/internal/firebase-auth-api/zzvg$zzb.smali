.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzvg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzako<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

.field private zzg:I

.field private zzh:I

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 33
    return-void
.end method

.method private final zza(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzh:I

    .line 43
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy;)V
    .locals 0

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    .line 40
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zze:I

    .line 41
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuz;)V
    .locals 0

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzg:I

    .line 47
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzuy;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuy;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzuz;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuz;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)V
    .locals 0

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzi:I

    .line 45
    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzh:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzvh;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 26
    :pswitch_0
    return-object p2

    .line 25
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 17
    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 23
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 24
    :cond_1
    :goto_0
    return-object p1

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    return-object p1

    .line 12
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzg"

    const-string v0, "zzh"

    const-string v1, "zzi"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 13
    const-string p2, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 14
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvh;)V

    return-object p1

    .line 10
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuz;
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    move-result-object v0

    .line 4
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuz;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    :cond_0
    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zzi:I

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    :cond_0
    return-object v0
.end method

.method public final zzg()Z
    .locals 2

    .line 48
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
