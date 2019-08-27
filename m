Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B3C9F0A6
	for <lists+linux-mediatek@lfdr.de>; Tue, 27 Aug 2019 18:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppffoPfZ1ftpSLWHRMmwuQ2vgyPOHrcl+0LaM0bf1Uw=; b=MIt5RsWnv64Yjc
	p1HP3dhFcxH/zhqT1S074P6suN1Wp6NXw0H1lCBGNnohen1ti0JLMTysHXjlT5JmJ1C7rnd2SaXuk
	UEhl0NgtVeOtkkkNZSerHzK1z/3d4ss8B2G1qIEvqKQHP8XnBOx5tI1NcutR2pXkfLW/5dtaUjxs3
	o06u2qjzYPdBCX5c81dfJ6XyIWKrFZKPrzBbgt/wUdTtGB/pKwyr5lX3BZNqPtgn+ry3Nf5FlTOT1
	cBV9K6U9SzX+4ML3diBm2OdsCvc5vo7myv7w6drXvSsvz5lbYlyg46xdtVeR6KhcAJ1ctHOr5mGhG
	J2zuSf3M5vY8gDtoDdCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ed4-0001xG-BW; Tue, 27 Aug 2019 16:47:34 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ed0-0001wj-Qn; Tue, 27 Aug 2019 16:47:32 +0000
Received: by mail-ot1-f65.google.com with SMTP id 100so8539026otn.2;
 Tue, 27 Aug 2019 09:47:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=W55p1J3dXo2eoSv3z8HYRfWnL+jUM+FXYgRcg9cAPuM=;
 b=WtOXJrGP1tqBTkXgHaAp5Q+GdM2PVIQHSYd/hOZNq+Pt+HeEFMaKerLdAW9azBW2cg
 c0JaWI0sR55HLYcpHNv3VWYptvsMNq2tjYqiel74kM3e7y4iaA5BGDFuwCjHrM5I0c98
 RY+CblUgJulIlHf09IjdKgF1vNwgJD5//FO4hyAiAszo7292sIoN/3Ja/nJ3vCgRk/Wo
 h6f+NQejTIudBnpWEK3008dekKocFEj4NcNmeDvJPjLe4r3DQX4A8tvK7cGYmSewFUKO
 AQnMfD2/qFcvBf24w2tnuwr6c1Q6/Y/xbrmsxHsDk7/E6z+Xb7eUHaqwGViJqVACC9Lx
 EutQ==
X-Gm-Message-State: APjAAAXUsQ8q52xWNQrfnLNT1o5Pt12zNiBT3csxRMlSEXL8HnJ6zOIQ
 gC1k5HHxNHaMu536cjFsFw==
X-Google-Smtp-Source: APXvYqyR/GUWnMaTE26vhIdo9g05lr8gX2pzwKUsW3nwuf/nPgB6R/qe9oG9nKlAZyYTrjefTWlNKg==
X-Received: by 2002:a9d:7c94:: with SMTP id q20mr3535892otn.353.1566924450127; 
 Tue, 27 Aug 2019 09:47:30 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c5sm5297702otl.29.2019.08.27.09.47.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:47:29 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:47:28 -0500
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 04/13] dt-bindings: rtc: mediatek: add missing mt6397
 rtc
Message-ID: <20190827164728.GA20645@bogus>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-5-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-5-frank-w@public-files.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_094730_866296_87508A82 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, 18 Aug 2019 15:56:02 +0200, Frank Wunderlich wrote:
> From: Josef Friedl <josef.friedl@speed.at>
> 
> add missing devicetree-binding document for mt6397 rtc
> in later patch driver is extended with mt6323 chip
> 
> Suggested-By: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> changes since v5: none
> changes since v4: use relative path
> changes since v3: moved SOB
> changes since v2: splitted rtc-mt6397.txt from first patch
> ---
>  .../devicetree/bindings/rtc/rtc-mt6397.txt    | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
