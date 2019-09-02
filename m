Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A11A57E3
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 15:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kHW14elIngOjEH2gjCvirNazuJ5ZH+dxXYSXjjxLPXE=; b=YmLyDvRrFBVMiDB9pq7jIp7P2B
	0evKAJMH3EF1nhpubo8yq52xodoCk6fEALa6BAm5OhJ0VMNFlQ97fDZmW3cy8YU42oPIVDSGteuGN
	Ufaz57SuokSoR9oKT+BSN7UgyHMO7+XAAZf9luK8/D+698k2yDxFz14sjckt4S0GLWhyTAoDiIi5u
	VlnUbebFUkgpaYMulLdFbi9FMRR2SV5KzZa+5c+90G04Evw6HtW4DFTGYHuWhfZM0DvN7wtkG3J72
	G4wBnXj2fYG/zzea+lxcKG2ogo7wuHfa+a2y42LEeNn+y8iKF4wQj0k0dcH3pPdPDREg8FGEfIJSK
	3sUeamsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mZn-0004gu-W1; Mon, 02 Sep 2019 13:41:00 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mXq-0001KD-1h; Mon, 02 Sep 2019 13:38:59 +0000
Received: by mail-wm1-f66.google.com with SMTP id t9so14650301wmi.5;
 Mon, 02 Sep 2019 06:38:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=SvhFRmoRlEP5dD+Rd/+9x0kDcEgKUm1JjWNc3Yoeqhs=;
 b=sBq1cj1qjuO8Xtmsmi0D4Fv7cMZy8kNPm6yvqc9Or8Tj9yjrAWS05n9B20q6fHcQz+
 VHBleY12siaiem/XougR4jPfM0maI6xQrIYkTTXj7sU+B1r07sulFtF+onn6SRqPEeX0
 Rz2vsA4OoRp7TmizlxZVEAFVn6ksMaN1JBGusZo3mF3ZBvQJ1Y71yvAA814TJrL/KCeJ
 qYrlTpRYlH1dz2/eqypKRTZcptHDlWvG1hJ1huo9fbUO3JzBtVbMhxJpY0Y8aTTa3hat
 SD0ONO3ttKxPZQMLPCtG5rjM9by9NcrAKyc7Cu+FtMf+UW0XkjftXpJWnrlZ1d/MjAB6
 scOA==
X-Gm-Message-State: APjAAAVUOot1yPbrUWqefBoMHbhsQbKIQ50tFFua3tw+PR6CMfZ5Vfrv
 ccndIhq2TWhAPAWW8WRrEQ==
X-Google-Smtp-Source: APXvYqy/kMjM4e+Q7ism1M7S1aJzfHDzEGzfxhVDRiXjrA+3mBmRb6rx1jsTojSZL5vijGvaOhqtsQ==
X-Received: by 2002:a7b:cd97:: with SMTP id y23mr5529846wmj.74.1567431536779; 
 Mon, 02 Sep 2019 06:38:56 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id z189sm5491333wmc.25.2019.09.02.06.38.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:38:56 -0700 (PDT)
Message-ID: <5d6d1b70.1c69fb81.67069.6e61@mx.google.com>
Date: Mon, 02 Sep 2019 14:38:55 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v5,
 05/32] dt-bindings: mediatek: add mutex description for mt8183 display
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-6-git-send-email-yongqiang.niu@mediatek.com>
In-Reply-To: <1567090254-15566-6-git-send-email-yongqiang.niu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063858_244724_CA4E37E6 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 CK Hu <ck.hu@mediatek.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 29 Aug 2019 22:50:27 +0800, <yongqiang.niu@mediatek.com> wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add mutex description for mt8183 display
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
