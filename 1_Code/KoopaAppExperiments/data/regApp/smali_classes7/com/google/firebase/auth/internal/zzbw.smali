.class public final Lcom/google/firebase/auth/internal/zzbw;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/firebase/auth/TotpSecret;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:I

.field private final zzd:I

.field private final zze:J

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "sessionInfo cannot be empty."

    invoke-static {p7, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    const-string v0, "firebaseAuth cannot be null."

    invoke-static {p8, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    nop

    .line 23
    const-string v0, "sharedSecretKey cannot be empty. This is required to generate QR code URL."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbw;->zza:Ljava/lang/String;

    .line 24
    const-string p1, "hashAlgorithm cannot be empty."

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbw;->zzb:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/google/firebase/auth/internal/zzbw;->zzc:I

    .line 26
    iput p4, p0, Lcom/google/firebase/auth/internal/zzbw;->zzd:I

    .line 27
    iput-wide p5, p0, Lcom/google/firebase/auth/internal/zzbw;->zze:J

    .line 28
    iput-object p7, p0, Lcom/google/firebase/auth/internal/zzbw;->zzf:Ljava/lang/String;

    .line 29
    iput-object p8, p0, Lcom/google/firebase/auth/internal/zzbw;->zzg:Lcom/google/firebase/auth/FirebaseAuth;

    .line 30
    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbw;->zzg:Lcom/google/firebase/auth/FirebaseAuth;

    .line 46
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 48
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method private static zza(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .line 51
    const-string v0, "Activity cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/content/Intent;

    .line 53
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final generateQrCodeUrl()Ljava/lang/String;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbw;->zzg:Lcom/google/firebase/auth/FirebaseAuth;

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 6
    const-string v1, "Current user cannot be null, since user is required to be logged in to enroll for TOTP MFA."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseUser;

    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string v1, "Email cannot be empty, since verified email is required to use MFA."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzbw;->zzg:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/auth/internal/zzbw;->generateQrCodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final generateQrCodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 11
    const-string v0, "accountName cannot be empty."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    const-string v0, "issuer cannot be empty."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzbw;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/auth/internal/zzbw;->zzb:Ljava/lang/String;

    iget v0, p0, Lcom/google/firebase/auth/internal/zzbw;->zzc:I

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p2

    move-object v2, p1

    move-object v4, p2

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 15
    const/4 p2, 0x0

    const-string v0, "otpauth://totp/%s:%s?secret=%s&issuer=%s&algorithm=%s&digits=%d"

    invoke-static {p2, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getCodeIntervalSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/auth/internal/zzbw;->zzd:I

    return v0
.end method

.method public final getCodeLength()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/firebase/auth/internal/zzbw;->zzc:I

    return v0
.end method

.method public final getEnrollmentCompletionDeadline()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/google/firebase/auth/internal/zzbw;->zze:J

    return-wide v0
.end method

.method public final getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbw;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionInfo()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbw;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final getSharedSecretKey()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbw;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final openInOtpApp(Ljava/lang/String;)V
    .locals 1

    .line 31
    const-string v0, "qrCodeUrl cannot be empty."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/zzbw;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    const-string p1, "https://play.google.com/store/search?q=otpauth&c=apps"

    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/zzbw;->zza(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public final openInOtpApp(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 37
    const-string v0, "QrCodeUrl cannot be empty."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    const-string v0, "FallbackUrl cannot be empty."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    const-string v0, "Activity cannot be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :try_start_0
    invoke-static {p1, p3}, Lcom/google/firebase/auth/internal/zzbw;->zza(Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-static {p2, p3}, Lcom/google/firebase/auth/internal/zzbw;->zza(Ljava/lang/String;Landroid/app/Activity;)V

    .line 44
    return-void
.end method
