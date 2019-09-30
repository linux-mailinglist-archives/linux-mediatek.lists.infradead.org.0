Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4307C2AD5
	for <lists+linux-mediatek@lfdr.de>; Tue,  1 Oct 2019 01:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jV1Q2w+1n/YtDD3ZWZVSC+mrh5Fy84E+fLMgajMb8c=; b=gMvr6lKTMcafK4
	11kipVVdSRqS2xm1T1v9cgaRNp1gdoknttNXXQgzVvPJeHYc/FM8gkZKYcx36qEVqKrqKsPF8iJQR
	v4qVufa2Uci7mFLr0KhbZ2RTiLLPJwvUICkrWXgtULg/1rNR1Homc7XDXIeMknfZU6kyKtMwGRUWS
	f1e8R1G5FMlVA4SAam6Km3OCuEw8tfS/hw/wJTXJh7rcQHAxEoiF0SJy1g3H+Biz6Sl2SE4WEqJ4T
	qCpMACzaVTzTLWnDDEECvV78liM9vW6inkufaR+LSVn9fN5a2V8Af8Gsa83ptV09FSPy07222sTrH
	idsRNuYMwKiRjr+wluSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF54f-0004vd-6A; Mon, 30 Sep 2019 23:27:25 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF54U-0004nG-Ac
 for linux-mediatek@lists.infradead.org; Mon, 30 Sep 2019 23:27:16 +0000
Received: by mail-qt1-x842.google.com with SMTP id n7so19281967qtb.6
 for <linux-mediatek@lists.infradead.org>; Mon, 30 Sep 2019 16:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pl9Uoj87Ji8fhmMmVA6l1LGr0jFQ4KuWKIrFbIh3wWY=;
 b=NAWE7s0qtdMAJiZamX3V6xokEA3BihpvGiwij4I9RhrSrs1/+NcFnC19kIYC2+VXm+
 mw4JB/DlOtISetTBRNDx9DFrMSVyR1OwEHYcnM7fyiodpHUy35LKFF+/IykPa/76nTNi
 oq4scSmcMmXkNJXm9at4/0G+We9rQDvDXAya0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pl9Uoj87Ji8fhmMmVA6l1LGr0jFQ4KuWKIrFbIh3wWY=;
 b=Mb3+NoYnHEmpdJQeBCYCcvmefa2f5HnkLQWhxjt3odRGWeLalR/O5tFSOHQ2qa3+9r
 nRz8p0/VPLyAn9BOZkb+HQCVjPnC8wiVoecofGxcDyiImSkwZNDNzY3node9lvIrSwBn
 y68LbcsTOlkVph3mFGJ7fzhW0jBMCaX1kIhdOzqAuVqIsNmHZB9nOikO5ycMl7ZMpExf
 mrVeHBsIu9rVNMmC5F8SotSP6CyW4+va6MMLsBsfef3QEzubWGkEzWkkmk/nLK3kUF/s
 hHUQmJbpJJOtCdI4Ze4ml3EGtXzhyGV0VNWIlLXYp/Tw2yJKgKBn/pnO/Rv2R4GxWtzS
 6yuQ==
X-Gm-Message-State: APjAAAWgIeT9D0WUcgZqLwHKQMQ6NGGt2ri7XpiQ8ESNWmo/WDL3xx1D
 J/adWR0YLalgTe8ppfSkUZHFIWNr25I90wKh738sLQ==
X-Google-Smtp-Source: APXvYqzPlXIhfWnlF8sLl3jj8HRowIb8xLOPox6pz/DpeJE7rRAz9Qj8GEZSq7zX8V31/1SFTHD3X0AT7ZutVfrWEtc=
X-Received: by 2002:a05:6214:11b4:: with SMTP id
 u20mr20478355qvv.200.1569886032025; 
 Mon, 30 Sep 2019 16:27:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190930152846.5062-1-fparent@baylibre.com>
 <aa0487c21e1f9f04402f209358b18c75@kernel.wtf>
In-Reply-To: <aa0487c21e1f9f04402f209358b18c75@kernel.wtf>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 30 Sep 2019 16:26:46 -0700
Message-ID: <CAJMQK-g_PaNsfvX-H4_BA86aUOdyqpDt9oK86O7_mRWTjWSjHQ@mail.gmail.com>
Subject: Re: [PATCH v2] i2c: i2c-mt65xx: fix NULL ptr dereference
To: Cengiz Can <cengiz@kernel.wtf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_162714_394016_1B04FE95 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nicolas Boichat <drinkcat@chromium.org>, Qii Wang <qii.wang@mediatek.com>,
 Wolfram Sang <wsa@the-dreams.de>, lkml <linux-kernel@vger.kernel.org>,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-i2c-owner@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 2:20 PM Cengiz Can <cengiz@kernel.wtf> wrote:
>
> On 2019-09-30 18:28, Fabien Parent wrote:
> > Fixes: abf4923e97c3 ("i2c: mediatek: disable zero-length transfers for
> > mt8183")
> > Signed-off-by: Fabien Parent <fparent@baylibre.com>
>
> Reviewed-by: Cengiz Can <cengiz@kernel.wtf>
Reviewed-by: Hsin-Yi Wang <hsinyi@chromium.org>

Thanks!

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
