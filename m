Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A14685A7A5
	for <lists+linux-mediatek@lfdr.de>; Sat, 29 Jun 2019 01:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=485cwuUp7B4bQlFB0761GPozeyJO/NDeWRYG2AW3ZKk=; b=sYryI74yikCZBO
	MtbPWvwjFLQ2PzCE7oKJ+pWgFrKPps7W8SYCzyF0ut/Sos19bHMmpsQ7eZFBTcRnGkwgG0mWjmk0U
	PpEGWzRWgrtpWBwhbce5RDW9m0kEZQkrlb+3n1pZr8pxHmgKo9xyd7VP9NQl2vPweqGZr5YyvSMgf
	Eiej4HKgRtCXMCkhTEI+FYWlMKHhOeVJydxLUG9K+2QOQKFTUch14bhtuHiDt9IGKYCmS5llRiKvO
	so/n3R+ElIqQx3uuEB8aL4beriOPL4uPS+mGxpGnxApHKHVvckwL/qPPn5hK6bmPbZ12SgKqmNL13
	yn72a3sTy+uV1a8Nn9Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh0M9-0000n6-LP; Fri, 28 Jun 2019 23:32:37 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh0Lv-0000fO-Q0
 for linux-mediatek@lists.infradead.org; Fri, 28 Jun 2019 23:32:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so3717605pff.8
 for <linux-mediatek@lists.infradead.org>; Fri, 28 Jun 2019 16:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=pCnZsFeXtEhsGu5hcikExC62+4Wo/EuuXi1fmzeilKA=;
 b=0VbzT+pPAZ5Cw+l50LsV6VxWXKVmzUDbFzYuh8RNn9jDhvwYrGLpdd2Zox3h+s5z3d
 NsHcNsx8UNYIl/Tvfb7cXa/FuLVj1zcEON3iB5PUkGIp07Nt8sBjGk1VhpQX63mE5GrQ
 v50tAcJD87eCeRoV0wkDeOzOz3jCuLO00fUJ3whOaPkolh4Bk6/8PU8zR+cwJsZAHMz/
 ScenEHfkRqLUKlPcxdU4QjR3X/mOrXFzVippr4fAnNlaDmVhjqINrruhID6v634TKkd/
 y9tKRsD6McBdP4RBm7SdgnNQYnubc97zKWxXjwt3g8AgXpwKyyd43Oguezk1zdCnyWPI
 r/Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=pCnZsFeXtEhsGu5hcikExC62+4Wo/EuuXi1fmzeilKA=;
 b=VNlw+bjPebcB5CbdFsvUy55b+Pne9suocd0rgbq4YxWBH0YfuMij04GOu5a3zI9Ztu
 nlFcU5+XDG0GrP5ElcY6he+Ens7ocK8CDtFrRTJH2gFiXRbFdZdPvEysb3ez3nN7oelC
 lucapX7ZIxp7wuzsJ1SSiJ3Lp8sGbGYBe2nX5F/8vbV/6WgSTbODiomfKefVTcAdwqxn
 rJ471E0E9VzUYJyWx+tH4qA8anlQ+Guz1v0CUj6dFGOZAU8Dqhk1/wB90dt18+ETIfyn
 gwTkoo/CO1s1QOfplvkeexUYEjqjVFKUvrk8h24W/fF6XNQfaA/VSy25ip9pHID0a88x
 PRQg==
X-Gm-Message-State: APjAAAWIa+ZkJ91r1KEkxeHW6XbreCFbVQZffvNP2upiy7xwBBylKLAH
 LJTp1WoCc+jvc7MWyaM+pRsABg==
X-Google-Smtp-Source: APXvYqzJ2MLMBi8iA3yNVUvYroDxbXL+variJXnbCGCuqZ3XKDF6o6+6MYhexAh/V2sqsNQR1LhPNg==
X-Received: by 2002:a17:90a:3210:: with SMTP id
 k16mr15622156pjb.13.1561764742710; 
 Fri, 28 Jun 2019 16:32:22 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id s22sm3569018pfh.107.2019.06.28.16.32.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 16:32:21 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: ryder.lee@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v1] arm: dts: mediatek: add basic support for MT7629 SoC
In-Reply-To: <a8ca0018ac8a4c5f61a7a1efc9dc5dccd768628b.1552449524.git.ryder.lee@mediatek.com>
References: <a8ca0018ac8a4c5f61a7a1efc9dc5dccd768628b.1552449524.git.ryder.lee@mediatek.com>
Date: Fri, 28 Jun 2019 16:32:18 -0700
Message-ID: <7hy31lp9q5.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_163223_840043_24101D6A 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Steven Liu <steven.liu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Weijie Gao <weijie.gao@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

<ryder.lee@kernel.org> writes:

> From: Ryder Lee <ryder.lee@mediatek.com>
>
> This adds basic support for MT7629 reference board.
>
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>

Just noticing this is not upstream yet.

I did a basic boot test to ramdisk on the mt7629-rfb board donated for
kernelCI (thanks MediaTek!) and it boots just fine.

Tested-by: Kevin Hilman <khilman@baylibre.com>

Kevin

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
