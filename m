Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8701C1E8C76
	for <lists+linux-mediatek@lfdr.de>; Sat, 30 May 2020 02:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVAvqzzfoeNM/2ae7RvdlvkBZw2RCZZ0jsI3PthRSas=; b=c0/DsRm7avOygd
	x/0T7xORvty7gQ5WAB0zMT+t4Nr8Cp8/mylFmgbgIHS1/mhPGWYIV+smsWiBgCxeNMVy88CV/zi6W
	cu1nT9NtOKlTmkKI/mXghmCeaSfEnSz7uh/s0oTA++ZK/1e+U9Q/k/xXT4hJRU2Y4LgiFp9TgXY8+
	87Qj/uDv7Dg6ZzbgVj9YYB3dBQqT5eLHB3+Do7mfe5jQshx9Z5kj/zWLo9dDnkD1quq3bgzd/GJB5
	7MsLz+B0TzxZjFGr4GGKtvnrcpAUqKlZcMlxviGaFCis7BSVGUp3f0cE1TWIVpFtvoJjQVs7vCG0l
	BQGUFDCFwd/qcdTFMpMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jep2X-0004YW-Ex; Sat, 30 May 2020 00:07:53 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jep2K-0004PF-O5; Sat, 30 May 2020 00:07:41 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8BA291287382F;
 Fri, 29 May 2020 17:07:39 -0700 (PDT)
Date: Fri, 29 May 2020 17:07:38 -0700 (PDT)
Message-Id: <20200529.170738.790767127324559139.davem@davemloft.net>
To: brgl@bgdev.pl
Subject: Re: [PATCH net-next v2] dt-bindings: net: rename the bindings
 document for MediaTek STAR EMAC
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200528135902.14041-1-brgl@bgdev.pl>
References: <20200528135902.14041-1-brgl@bgdev.pl>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 29 May 2020 17:07:40 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_170740_783497_DB6EF191 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, stephane.leprovost@mediatek.com,
 bgolaszewski@baylibre.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, fparent@baylibre.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, andrew.perepech@mediatek.com,
 pedro.tsai@mediatek.com, matthias.bgg@gmail.com, kuba@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 28 May 2020 15:59:02 +0200

> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> The driver itself was renamed before getting merged into mainline, but
> the binding document kept the old name. This makes both names consistent.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
> v1 -> v2:
> - update the id field as well

Applied, thank you.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
