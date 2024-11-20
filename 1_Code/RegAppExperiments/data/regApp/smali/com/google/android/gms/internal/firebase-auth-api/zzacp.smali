.class final Lcom/google/android/gms/internal/firebase-auth-api/zzacp;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzadh;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaea;


# instance fields
.field private zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadp;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

.field private final zze:Lcom/google/firebase/FirebaseApp;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;)V
    .locals 6

    .line 5
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;Lcom/google/android/gms/internal/firebase-auth-api/zzadp;Lcom/google/android/gms/internal/firebase-auth-api/zzacj;Lcom/google/android/gms/internal/firebase-auth-api/zzacm;)V

    .line 6
    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;Lcom/google/android/gms/internal/firebase-auth-api/zzadp;Lcom/google/android/gms/internal/firebase-auth-api/zzacj;Lcom/google/android/gms/internal/firebase-auth-api/zzacm;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadh;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zze:Lcom/google/firebase/FirebaseApp;

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 11
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadp;Lcom/google/android/gms/internal/firebase-auth-api/zzacj;Lcom/google/android/gms/internal/firebase-auth-api/zzacm;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzady;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaea;)V

    .line 13
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadp;Lcom/google/android/gms/internal/firebase-auth-api/zzacj;Lcom/google/android/gms/internal/firebase-auth-api/zzacm;)V
    .locals 1

    .line 129
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadp;

    .line 130
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    .line 131
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    .line 132
    const-string p1, "firebear.secureToken"

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadz;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "LocalClient"

    if-eqz p2, :cond_0

    .line 134
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzady;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 135
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Found hermetic configuration for secureToken URL: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadp;

    if-nez p2, :cond_1

    .line 137
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;

    .line 138
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadp;

    .line 139
    :cond_1
    const-string p1, "firebear.identityToolkit"

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadz;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 141
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzady;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 142
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Found hermetic configuration for identityToolkit URL: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    if-nez p2, :cond_3

    .line 144
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    .line 145
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    .line 146
    :cond_3
    const-string p1, "firebear.identityToolkitV2"

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadz;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 148
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzady;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 149
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Found hermetic configuration for identityToolkitV2 URL: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    if-nez p2, :cond_5

    .line 151
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    .line 152
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    .line 153
    :cond_5
    return-void
.end method

.method private final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacs;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zze:Lcom/google/firebase/FirebaseApp;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    return-object v0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadp;Lcom/google/android/gms/internal/firebase-auth-api/zzacj;Lcom/google/android/gms/internal/firebase-auth-api/zzacm;)V

    .line 80
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaee;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaee;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 17
    const-string v2, "/createAuthUri"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 19
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaeg;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 23
    const-string v2, "/deleteAccount"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    const-class v2, Ljava/lang/Void;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 25
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaej;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaej;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaei;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 29
    const-string v2, "/emailLinkSignin"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaei;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 31
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzael;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzael;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaek;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 35
    const-string v2, "/accounts/mfaEnrollment:finalize"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaek;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 37
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaen;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaen;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaem;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 41
    const-string v2, "/accounts/mfaSignIn:finalize"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaem;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 43
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaes;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaes;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafe;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadp;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 47
    const-string v2, "/token"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 49
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaev;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaev;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 53
    const-string v2, "/getAccountInfo"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 55
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaez;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaez;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaey;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzb()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zzb()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzb(Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 61
    const-string v2, "/getOobConfirmationCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaey;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 63
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafb;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafb;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafa;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 67
    const-string v1, "/getRecaptchaParam"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafa;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v0, p2, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 69
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafc;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafc;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaff;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 73
    nop

    .line 74
    const-string v2, "/recaptchaConfig"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zzb()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zzc()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&clientType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 78
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafo;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafo;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafr;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 84
    const-string v2, "/resetPassword"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzafr;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 86
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafq;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafq;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaft;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzb(Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 92
    const-string v2, "/sendVerificationCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaft;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 94
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafs;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafs;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafv;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 98
    const-string v2, "/setAccountInfo"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzafv;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 100
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafu;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafu;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafx;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 108
    const-string v2, "/signupNewUser"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzafx;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 110
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafw;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafw;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafz;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;

    if-eqz v0, :cond_0

    .line 114
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzb(Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 118
    const-string v2, "/accounts/mfaEnrollment:start"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzafz;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 120
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafy;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafy;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagb;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafy;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafy;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzb(Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 126
    const-string v2, "/accounts/mfaSignIn:start"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzagb;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 128
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagj;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagl;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 157
    const-string v2, "/verifyAssertion"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzagl;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 159
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagk;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagk;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagn;",
            ">;)V"
        }
    .end annotation

    .line 160
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 163
    const-string v2, "/verifyCustomToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzagn;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 165
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagm;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagm;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagp;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 169
    const-string v2, "/verifyPassword"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzagp;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 171
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzago;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzago;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagr;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 175
    const-string v2, "/verifyPhoneNumber"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 177
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagq;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagq;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagt;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacm;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzf:Ljava/lang/String;

    .line 181
    const-string v2, "/accounts/mfaEnrollment:withdraw"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzagt;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V

    .line 183
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zza(Ljava/lang/String;)V

    .line 103
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/Object;)V

    .line 104
    return-void
.end method
