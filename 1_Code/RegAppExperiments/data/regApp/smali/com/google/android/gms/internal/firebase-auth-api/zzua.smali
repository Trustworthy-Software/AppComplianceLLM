.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzua;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzua;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzua;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzako<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzua;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

.field private zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzua;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 30
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;

    return-object v0
.end method

.method public static zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzua;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 0

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 35
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzua;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzua;Lcom/google/android/gms/internal/firebase-auth-api/zzvj;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvj;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvj;)V
    .locals 0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    .line 38
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zze:I

    .line 39
    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzua;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 22
    :pswitch_0
    return-object p2

    .line 21
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 13
    if-nez p1, :cond_1

    .line 14
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    monitor-enter p2

    .line 15
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 16
    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 19
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 20
    :cond_1
    :goto_0
    return-object p1

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    return-object p1

    .line 8
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzg"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 9
    const-string p2, "\u0000\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0000\u0000\u0002\n\u0003\u1009\u0000"

    .line 10
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzua$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zztz;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzua;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzua;-><init>()V

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

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzua;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    return-object v0
.end method
