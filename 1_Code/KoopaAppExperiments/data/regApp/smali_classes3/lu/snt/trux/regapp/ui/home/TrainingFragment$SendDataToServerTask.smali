.class public Llu/snt/trux/regapp/ui/home/TrainingFragment$SendDataToServerTask;
.super Landroid/os/AsyncTask;
.source "TrainingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llu/snt/trux/regapp/ui/home/TrainingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendDataToServerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final SERVER_ENDPOINT:Ljava/lang/String; = "http://192.168.188.98:5000/receive-data"


# instance fields
.field final synthetic this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;


# direct methods
.method public constructor <init>(Llu/snt/trux/regapp/ui/home/TrainingFragment;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/regapp/ui/home/TrainingFragment;

    .line 343
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment$SendDataToServerTask;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .line 349
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 350
    .local v0, "dataToSend":Ljava/lang/String;
    const/4 v1, -0x1

    .line 353
    .local v1, "responseCode":I
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://192.168.188.98:5000/receive-data"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 354
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 355
    .local v3, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 356
    const/16 v4, 0x3a98

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 357
    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 358
    const-string v4, "Content-Type"

    const-string v5, "text/plain"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 362
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 365
    .local v4, "data":[B
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 366
    .local v5, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 369
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    move v1, v6

    .line 372
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 373
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v4    # "data":[B
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 374
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u274c Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegApp"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 343
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Llu/snt/trux/regapp/ui/home/TrainingFragment$SendDataToServerTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "responseCode"    # Ljava/lang/Integer;

    .line 384
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    const-string v2, "RegApp"

    if-ne v0, v1, :cond_0

    .line 385
    const-string v0, "\u2705 200 - OK"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u274c Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 343
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Llu/snt/trux/regapp/ui/home/TrainingFragment$SendDataToServerTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
