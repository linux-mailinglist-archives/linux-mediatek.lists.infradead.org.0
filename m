Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7451BE877
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 19:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jP5mYxpghgk0wAvp/hh5u2Uw8u+gyMOylfkcPwvwFk4=; b=Wz5d8vwHn/9pXj
	Zm0Qb61dxspdQ45dGSGB35pqyyOt0ZVVmvkMqQ2HP65hMupidK6JySv1KXe8YmneYeZ3M2VH11FUn
	8h9F0cGNVnUzzysopPN9B6tZ/odAEKdJ5lj3UPEpfSHfG2/aTdh3XJyxEVGVNRSIaYTrH8ENwmzWn
	XG6rbURNWEsUGnDLsjP7kIi9ARwJyHYu0EQJWKey5I4TNGcSbPxKiW5TXf1a354flRUcg5nB0UP+Z
	3aHS7KT9xnczzrnl4wvJSsYjOoFO+pTvj/4XswuLeBmoMULHhzgEVSGNqdCqgz730bgZkwhNBIY4S
	2N3BNfDrt0bH3U9AStVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9oT-0008Aj-Gv; Mon, 29 Apr 2019 17:11:33 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9lF-0003Gp-8r
 for linux-mediatek@lists.infradead.org; Mon, 29 Apr 2019 17:08:38 +0000
Received: by mail-lf1-x144.google.com with SMTP id u17so8611410lfi.3
 for <linux-mediatek@lists.infradead.org>; Mon, 29 Apr 2019 10:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wOR2n/WKNBUlgLsrspMYLj33ij4ail9EpMWAzQM+fOY=;
 b=y1BPnATeiJgU4rbLMQZ4SDld1g79zw1NXRTsk+8h63rzjqInRjWUhGv0v6WovaaJSq
 VuhXW5O9E1zkcB/iwlN5yGm29aNmDlOjHjLp6Nlqr63G9n/jMRjRgprCl8LDMl+5nL0U
 OAOERZB4jzHMVIrDRt7+rIGiCEI6P7eXKZW6tHGugru+uQ+JRd/l4vkSoCHSmr1aBD6g
 3uYBojW4MMbtg8DxmTRzmHN/6md6zhYVzH2crjPNqZfZBheAJA45U90HBsX95pDARVP0
 mcKL5QSbdzrWlKH0KkOBwczqjSP6C5jrh8XUkadM2Dr95VhzHzP0FBGfYUmrNDqOec1S
 Ot6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wOR2n/WKNBUlgLsrspMYLj33ij4ail9EpMWAzQM+fOY=;
 b=YgaQkivBaYbDwKu6fybBGnX+b2VLLywZq62fNxAB1X8CoeqhkdLi8vuYDWTxtcmqXY
 7jRwe5RSZGnOYzUxdTfrbJznWo21c9IydLKStGoFdECYz2FCQL4Nn3Ls0Pb4UJPtxW4o
 G/aNQQ/T76O+hjwD0jXh6az4Nh1Eziro69BlAzldOKtGMdVVaIygbeY/otWjczT2Kpe6
 BnGOu3EMtEsZULZYJlpXsPULSKY8f0Cwu9an69NiXDiJgRE2/R9NlgHItpcmYAdDUQbf
 anFsYd8jcWF03oRjNvTtGDM3fmpyeSKAsGzlIFJjVefuvg138DEd2CQuydykcZmIAgYZ
 xg3Q==
X-Gm-Message-State: APjAAAW8fQTPtWhD9F2i5DBXjL0wTooJdZzxWqUioH36d39ks5H/xK6b
 CiEaYyrB5whSsGMmTrBCAaHBXw==
X-Google-Smtp-Source: APXvYqxXXQVdOGHrHWTt813C818iLtBiUoofOLkGEeN7de2qupW3UQIVzhxdljtgdI/QBEPD1lS1oQ==
X-Received: by 2002:a19:751a:: with SMTP id y26mr12229470lfe.47.1556557691259; 
 Mon, 29 Apr 2019 10:08:11 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z16sm8795165lfi.9.2019.04.29.10.08.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:09 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:52:42 -0700
From: Olof Johansson <olof@lixom.net>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [GIT PULL] soc: mediatek: soc driver updates for v5.2
Message-ID: <20190429165242.lzujqpkym4p43etl@localhost>
References: <269cf168-14c0-6a72-5078-0c8e307655eb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <269cf168-14c0-6a72-5078-0c8e307655eb@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100813_836004_F7D2534A 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Fabien Parent <fparent@baylibre.com>,
 Nathan Chancellor <natechancellor@gmail.com>, arm-soc <arm@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 06:14:24PM +0200, Matthias Brugger wrote:
> Hi Olof and Arnd,
> 
> Below you can find the updates for soc drivers ready to be merged for v5.2.
> 
> Please take them into account.
> 
> Best regards,
> Matthias
> 
> ---
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/
> tags/v5.1-next-soc
> 
> for you to fetch changes up to 89e28da82836530f1ac7a3a32fecc31f22d79b3e:
> 
>   soc: mediatek: pwrap: Zero initialize rdata in pwrap_init_cipher (2019-04-12
> 21:57:49 +0200)
> 
> ----------------------------------------------------------------
> pmic wrapper:
> - add mt8516 bindings
> - add mt8516 driver support
> - fix clang warning

Merged, thanks!


-Olof

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
