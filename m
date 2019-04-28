Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BF1B6A1
	for <lists+linux-mediatek@lfdr.de>; Sun, 28 Apr 2019 22:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUnknVMEP9FS7f5OPQP89TBC0Vnrlbg7JIMaIhDGE3U=; b=IJMJRBG5GInfAM
	5uGcsjgm0DKiQEm8WI3sMTdMyZFEbxCS+qjXkTcIJ9KQ/Sw3F/RPgFDA6toVHh5S1fRDhQGUKNpSE
	BFQxms6LpuShKm0Mw/Xmt4fPsu1OUSW2EU2+egvlEOg3Q2ls5KRPKVK7aL3ImgcPyGOt3rPKMzzRp
	8t8x34VLup88BwEG/Vfy3VEShCBpxIuBfGaWYJxEbnnhylC1lnOXR9wb9LaOj/xERSWNcwWySR5Hc
	+Frd+e27TVKUy/O90FUPzVmcrzvPNyZTmEFsQjy578ktT6b1lyPjI1nVCU0ypnZrnBvzE4eCYOFlS
	6JrWWmgkWvmGAQ/mDUiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqNq-0001mk-Ag; Sun, 28 Apr 2019 20:26:46 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqIu-0002LQ-Ge
 for linux-mediatek@lists.infradead.org; Sun, 28 Apr 2019 20:21:52 +0000
Received: by mail-lf1-x144.google.com with SMTP id h126so6354891lfh.4
 for <linux-mediatek@lists.infradead.org>; Sun, 28 Apr 2019 13:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1QT1sK+ANF5OG/PefqUzMYvBnb84fl+mwlYnScnPHm8=;
 b=QGX4h6SdMKi8crwz1Cm20GvR6BYGAhmkuis0Z6KM9Q283K6/Mg/WWro7uoEt+kMid8
 Z13A0leNzkuTmkmgxuqD6e/9rzi6rdqhl1FtuoV7oYxoWn+VZhchNQbQOBkE1777l0Op
 jgINLab3OCW5aXv7fol2+LZgF7ThXruNK0RMUI02+iLCju5vAS5tFMjRLwWU7z8Los5g
 nzwodRVJ3vE+SgrQXXk8MeUueu0g/DcMXmLc6gIKdo/Q50xEyrNolYKkghXOzk0U+/CN
 O8ZQh2MBEZDNVzzz+Jiv3fkEVi1aQN4P067/vNovarmcTuk1/dFzfifxNUUGlT9bj16n
 GlCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1QT1sK+ANF5OG/PefqUzMYvBnb84fl+mwlYnScnPHm8=;
 b=IbpMdjVKH3DEcwTpH/zDPOUuw692lekU5k+p5ve4uzWMwLP9q+cnSK8s/2u3deuoEf
 tTS7Shr5H1VxEnRkDFfqqozjdnPTPX+w6w42ON8ITL4yPTevqvyDTBpgFSzQrtaLdWNX
 tMdPiS429RV80T/Ag1p5+yr4EpruSBCVbX5zEqWSiyfvDM/IR0su0dhPPtL2ybMi7xM0
 ZrqnsQAPtR82CP0zHFeyRg8fLwZdMv8JPJQvD+nf+/5MicpuZk8oP0Y5rsS0Ctp/OPeh
 HhJZgjmY+ooBW9Zp8zpr2Boneyz7sGyVT7NrggwICXe08kEFl6neH/CES0UnHnfzOGBF
 j7iw==
X-Gm-Message-State: APjAAAXsNKnveDTxkaBMxhNuw4IEioCGIbFnCtNATNGYZ8lhWXQjCTV+
 RxknMYS5a737Ie4AQHklR+6FjDHx1+ejOA==
X-Google-Smtp-Source: APXvYqwnbEjOKlwCNKl7E6dXgVKxR/CBq94EMoVDAvx7iWMWVRhhOw1Rcq2bTmtmdvahCETBTTgr7A==
X-Received: by 2002:ac2:50d5:: with SMTP id h21mr5312226lfm.44.1556482898800; 
 Sun, 28 Apr 2019 13:21:38 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d22sm6937783lfm.57.2019.04.28.13.21.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:21:37 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:57:53 -0700
From: Olof Johansson <olof@lixom.net>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [GIT PULL] dts64 updates for v5.2
Message-ID: <20190428195753.fxfhpkcckeajjut3@localhost>
References: <5ea296e5-92bd-5790-c075-cf4bcb74d88c@gmail.com>
 <47e01204-41b6-ba89-cbbb-3f684e3a7dff@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <47e01204-41b6-ba89-cbbb-3f684e3a7dff@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132141_023800_CF4C87BB 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Ryder Lee <ryder.lee@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seiya Wang <seiya.wang@mediatek.com>, Yunfei Dong <yunfei.dong@mediatek.com>,
 Erin Lo <erin.lo@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 arm-soc <arm@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Zhiyong Tao <zhiyong.tao@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 09:55:46AM +0200, Matthias Brugger wrote:
> 
> 
> On 23/04/2019 18:12, Matthias Brugger wrote:
> > Hi Anrd and Olof,
> > 
> > you can find below the pull request for mediatek related dts64.
> > 
> > Please have a look :)
> 
> Unfortunately the pull request has a minor merge conflict with the serial/tty
> tree [1]. Is there any action needed from my side?

Nah, that's fine. Thanks for the heads up.


-Olof

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
