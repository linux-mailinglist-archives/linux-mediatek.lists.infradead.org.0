Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9603212AA6A
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Dec 2019 06:53:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dy15x1EQpiCgXxbape9B8yUSULafA5mcBnEWHPwb4N0=; b=tiaqiY1DwuUt10
	xsu/ZoE2u1aVkLadfkyihI0sR+sgjDRwVuCdsztZpQubelaYAsko6XPvhvsgurGO4MNwUu0+dihgX
	VIGGpzJ4N+21r+cljdXoRX385kuX0l3F87EllGThZGXXv0vOpgBAgwnYEXy1g/gHVcy2I3N4LkeTk
	5BB943JFkv0zRA2kz8gTdut+s2YlIxn/ktEm9Rql65KlicuHhSNs+lSxZd3OY5HPXflQb9hooMYmi
	tN0iVeNpof3JdgUr69KMI+ESULXFv3OmjDeEre/y+hbNg23uWU/dgIWDv2+fSGWGfro5w+kk5Mpkn
	I3IIGZV1RatGxvOUrr+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikM5a-0003we-NR; Thu, 26 Dec 2019 05:53:38 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikM5X-0003vz-7P
 for linux-mediatek@lists.infradead.org; Thu, 26 Dec 2019 05:53:36 +0000
Received: by mail-qk1-x743.google.com with SMTP id 21so18855786qky.4
 for <linux-mediatek@lists.infradead.org>; Wed, 25 Dec 2019 21:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=cLzbJhpD5Hwr6N5MywLf3Xs4c3eeLRB2SD3vQXIQzSw=;
 b=Cx17dLrafYJa5xPSv3lVV3wzk31qC+KuZ6fLVcFnXa4R/jDr945lUBLfgMMNqesPO2
 bbPvceUrbeuHpRJbs9gPFRRoCA3Oa7L32NITAvVcWQxV3lOjAmjxzcCijmWuHrVv/bDW
 PN5o0PsuX/Z0BmPbo7U3DJ8oJwNvMZ5E2vCiRJTRLIakHip1+ffnlDToeZArfb2D8UZY
 HKUa3kDwmYWMMpP+SaXltEIN/aMU8P7De+gA/OYTrJ6JdnYzGhIRTyk+Xe74Qy7usL7o
 XcgSwW77eQcilqJDF4qeTna4Rea8G6Q/hH3MQTg6q0KnSj3njHUUzKf+GVDYo9vuGQ/M
 HCxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=cLzbJhpD5Hwr6N5MywLf3Xs4c3eeLRB2SD3vQXIQzSw=;
 b=fRjxUp0VQsRegjGLst00NI9lpm30qv47uJt0cQHlUXjZPDMh4kOzXqn6YmMr2AGb0P
 eqsrVDsTS7c2zeXPk1v7h+398uu9QsEe/DcZUwRUcY6UOqv1siG9WnnAOGLjKjzsW6se
 58XD+IX1mZVcaLtIK3TBAUGYil24o4FBETNt1693gmsRwJ6dyYkky3eJv9p7UVegL6xC
 L0j4kFHnXKwkpzlFAqI2ykvtAkQEOVw/jIad/MCrYpv0nFpXoFzRpHDszm3JWE5Yvpsf
 6pqzS1KgyJrGyQJCUV/ccrsOJdMb2vtTpryvmc1XIASeWXDVwglibA0BH/rTG1tKGUD5
 g+bg==
X-Gm-Message-State: APjAAAXol7eTNRYmKdxKB7lTwLjiTlFQthYIfibIvRuOc2cTmhO4lNjk
 IcRl3s4kFfKuORRA9dzo0/2Zfg==
X-Google-Smtp-Source: APXvYqzdbAALcUwCJ//wHxNu4rEzRWBsEQ9+zVEIJE8/RNPfGM5mfTkwmvfYkpkDZDHTnScUlnklKQ==
X-Received: by 2002:ae9:c018:: with SMTP id u24mr37176052qkk.339.1577339609314; 
 Wed, 25 Dec 2019 21:53:29 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id t3sm9253977qtc.8.2019.12.25.21.53.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Dec 2019 21:53:28 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] mm/page_owner: print largest memory consumer when OOM
 panic occurs
Date: Thu, 26 Dec 2019 00:53:27 -0500
Message-Id: <95CD23C9-D10D-4E6A-BF53-A4C1A4DB281A@lca.pw>
References: <20191226040114.8123-1-miles.chen@mediatek.com>
In-Reply-To: <20191226040114.8123-1-miles.chen@mediatek.com>
To: Miles Chen <miles.chen@mediatek.com>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_215335_314153_3E5F4018 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michal Hocko <mhocko@suse.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



> On Dec 25, 2019, at 11:01 PM, Miles Chen <miles.chen@mediatek.com> wrote:
> 
> That is what the patch does -- targeting on the memory leakage which causes an OOM kernel panic, so the greatest consumer information helps (the amount of leakage is big enough to cause an OOM kernel panic)
> 
> I've posted the number of real problems since 2019/5 I solved by this approach.

The point is in order to make your debugging patch upstream, it has to be general useful. Right now, it feels rather situational for me for the reasons given in the previous emails.
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
